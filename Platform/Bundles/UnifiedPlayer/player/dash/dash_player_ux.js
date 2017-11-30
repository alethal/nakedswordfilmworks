

var  dashVideoControls = function (playerWrapper, playerHTML, embedId, currentMovieId, dashPlayerCoreObject, url, trickPlayImgPrefix) {
	// this player wrapper, the unique id for this player wrapper, the css selector for the player wrapper, and movie id
	var wrapper, playerInstanceId, playerInstanceSelector, thisMovieId;
	// references to this player instance's dom nodes (wrappers, player, and top level controls)
	var controls, touchShield, video, playButtonOverlay, playButtonOverlayIcon, player, play, quality, qualityMenu,
		trickPlayWrapper, trickPlayTimeCode, trickPlayContainer, trickPlaySpinner, qualityCurrentDisplay, volume, stats, fullscreen,
		seekbar, controllerPanels, durationTime, currentTime/*, popout */;
	// panel controls (secondary level controls and display - volume, bitrate selection, stats)
	var muteIconX, muteIcon,volumeSlider,volumeDisplay, qualityDetailsTarget, qualityDetailsCurrent, bufferMeter,
		adaptDirection, videoId, statsDisplay;
	// encapsulated modules (each tied to a specific player functionality or behavior)
	var FullScreenBehavior, TrickPlayBehavior, LastUserInteractionTime, ControlVisibility,
	PanelVisibility, VolumeSettings, SeekBarBehavior, MouseVisibility, QualitySettingsBehavior, StatsSettingsBehavior;
	// collection of nodes that display current bitrates (used for pulse animation on bitrate change)
	var activeChangingBitrate;
	// initializing functions
	var setPlayState, initControls, initHeartBeat;
	// functions dealing with event listeners
	var delegateEvent, manageResizeEvent;
	// encapsulated utilities module that is not intended to be specific to the player controls
	// (could/should be broken out into its own separate file)
	var Utilities;
	// delivery url
	var deliveryUrl = url;
	// reference to the current dash player core instance
	var dashPlayer = dashPlayerCoreObject;
	// holds the current state of the controls
	var controlsVisible = true;
    // URL prefix for 10 second image controls for SSL
    var trickPlayImgURLPrefix = trickPlayImgPrefix;
	// is the mouse over the controls
	var mouseOverControls = false;
	// transition and display timing configuration for timeouts, intervals
	// (could/should be set up externally on a per app basis)
	var timingObj = {
		hideControlsThreshold: 3000, // timing interval in ms before controls should fade out
		seekbarInterval: 500,
		bitrateInterval: 500,
		heartbeatInterval: 500,
		trickplayInterval: 500,
		hideTrickPlayImg: 1000,
		showTrickPlayImg: 1000
	};
	// video properties (only listing properties we are currently implementing)
/*	var videoObject = {
		currentSrc: null,
		currentTime: null,
		duration: null,
		ended: null,
		muted: null,
		paused: null,
		volume: null
	};*/
    // variable that holds a timestamp to compare against when wanting to check state
    var controlVisibilityTime = 0;

		// controls fullscreen behavior
		FullScreenBehavior = (function () {
			// functions
			var toggleFullScreenMode, enterFullScreenMode, exitFullScreenMode, syncFullScreenIcon, fullscreenEventHandler;
			// interval handler
			var syncHandler;
			// flag that is set to reflect whether the video is fullscreen or not
			var isFullScreen = false;

			// toggle entering or exiting fullscreen mode
			toggleFullScreenMode = function (el) {
				var fullscreenElement = document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || document.msFullscreenElement;
				var fullscreenEnabled = document.fullscreenEnabled || document.mozFullScreenEnabled || document.webkitFullscreenEnabled || document.msFullscreenEnabled;
				if (fullscreenEnabled) {
					if (fullscreenElement === null  || fullscreenElement === undefined) {
						enterFullScreenMode(el);
					} else {
						exitFullScreenMode();
					}
				}
			};

			// launch fullscreen mode
			enterFullScreenMode = function (el) {
				if(el.requestFullscreen) {
					el.requestFullscreen();
				} else if(el.mozRequestFullScreen) {
					el.mozRequestFullScreen();
				} else if(el.webkitRequestFullscreen) {
					el.webkitRequestFullscreen();
				} else if(el.msRequestFullscreen) {
					el.msRequestFullscreen();
				}
			};

			// exit fullscreen mode
			exitFullScreenMode = function () {
				if (document.exitFullscreen) {
					document.exitFullscreen();
				} else if (document.mozCancelFullScreen) {
					document.mozCancelFullScreen();
				} else if (document.webkitExitFullscreen) {
					document.webkitExitFullscreen();
				} else if (document.msExitFullscreen) {
					document.msExitFullscreen();
				}
			};

			// check fullscreen icon
			// (the icon can be out of sync with state due to the ability to cancel fullscreen with the esc key)
			syncFullScreenIcon = function () {
				isFullScreen = !isFullScreen;
				if ((isFullScreen && fullscreen.classList.contains('control-icon-fullscreen')) || (!isFullScreen && fullscreen.classList.contains('control-icon-windowed'))) {
					Utilities.toggleClassName(fullscreen,'control-icon-fullscreen','control-icon-windowed');
				}
			};

			// select the correct prefix for fullscreen change event handler and a set listener for the event
			(function () {
				var testElem = document.createElement('fullscreenTestElem');
				var handlerName = {
					transition: 'fullscreenchange',
					MSTransition: 'MSFullscreenChange',
					MozTransition: 'mozfullscreenchange',
					WebkitTransition: 'webkitfullscreenchange'
				};
				for ( var t in handlerName ) {
					if(handlerName.hasOwnProperty(t) && testElem.style[t] !== undefined ){
						document.addEventListener(handlerName[t], syncFullScreenIcon, false);
					}
				}
			}());

			return {
				toggleFullScreenMode: toggleFullScreenMode
			}
		}());


		// ten second image trick play
		TrickPlayBehavior = (function () {
			var startTrickPlay, stopTrickPlay, loadTrickPlayImage;
			var lastSeekEventTime, trickPlayImage, trickPlayHeight, trickPlayUrl, trickPlayLoading,
				trickPlayLastLoadTime, pointerNotOverSeekBar, lastCreatedUrl, lastKnownImageNumber;


			lastKnownImageNumber = undefined;
			trickPlayImage = undefined;
			trickPlayHeight = 180;
			trickPlayLoading = false;
			trickPlayLastLoadTime = 0;
			lastSeekEventTime = 0;



			// get correct 10 second image based on position over seekbar
			startTrickPlay = function (e, lastImageNumber) {
				var cp, mx, my, imageNum, inums, trickTime;
				var rangeThumbRadius = 9;
				var movieId = thisMovieId;

				if (!dashPlayer.stream) {
					return;
				}
				// lastImageNumber used to re-establish 10 second image in case of a 500 error from server
				// only passed in as an argument to function when a 500 error occurs on the server
				if (lastImageNumber) {
					imageNum = lastImageNumber - 1;
				}
				else {
					// get user input position on seekbar
					cp = seekbar.getBoundingClientRect();
					if (e.clientX === undefined) { // map touchmove event on android
						e.clientX = e.touches[0].clientX;
						e.clientY = e.touches[0].clientY
					}
					mx = e.clientX - cp.left - rangeThumbRadius;
					my = e.clientY - cp.top;
					if (my < 0) {
						return;
					}
					// get 10 second image number and construct url
					lastSeekEventTime = Utilities.setNewTime();
					trickTime = Math.floor(mx / (cp.width - (rangeThumbRadius+rangeThumbRadius) ) * dashPlayer.stream.duration);
					if(trickTime <= 0) {trickTime = 0}
					if (trickTime >= dashPlayer.stream.duration) {trickTime = dashPlayer.stream.duration}
					trickPlayTimeCode.innerHTML = Utilities.returnTime(trickTime);
					var segmentIndexAtTrickTime = dashPlayer.stream.getStreamSegmentIndexAtStreamTime(trickTime);
					var mediaSegmentInfoAtTrickTime = dashPlayer.stream.getMediaSegmentIndexAtStreamSegmentIndex(segmentIndexAtTrickTime);
					var periodAtTrickTime = dashPlayer.stream.periods[mediaSegmentInfoAtTrickTime.periodIndex];
					if (periodAtTrickTime.movieId) {movieId = periodAtTrickTime.movieId}
					var mediaTimeAtTrickTime = mediaSegmentInfoAtTrickTime.mediaSegmentIndex * periodAtTrickTime.segmentDuration;
					imageNum = Math.floor((mediaTimeAtTrickTime+5) / 10.0);
					if (isNaN(imageNum)) { return; }
					if (imageNum < 1) { imageNum=1; } // starts at 1.
				}

				lastKnownImageNumber = imageNum; // set lastKnownImageNumber
				inums = '' + imageNum;
				while (inums.length < 8) { inums = '0' + inums; } // pad with 0s
				lastCreatedUrl = trickPlayImgURLPrefix + movieId+ '/' +movieId+ '_' +inums+ '.jpg?s=' +trickPlayHeight+ 'h';
				if (trickPlayUrl !== lastCreatedUrl) {
					loadTrickPlayImage(lastCreatedUrl);
				}
			};


			// hide trick play container
			stopTrickPlay = function (e) {
				var timeNow = Utilities.setNewTime();
				pointerNotOverSeekBar = true;

				if(e) {
					if (trickPlayWrapper.style.display !== 'none') {
						trickPlayWrapper.style.display = 'none';
					}
				}
				else {
					if (timeNow - lastSeekEventTime > timingObj.hideTrickPlayImg || controls.style.display === 'none') {
						trickPlayWrapper.style.display = 'none';
					}
				}
			};


			loadTrickPlayImage = function (url) {
				if (!trickPlaySpinner.classList.contains('spin') && Utilities.hasTimeIntervalElapsed(trickPlayLastLoadTime,500)) {
					trickPlaySpinner.classList.add('spin');
					trickPlayWrapper.style.display = 'block';
				}
				var tpImg;
				 // only load 1 image at a time or if it has been at least 2 seconds since the last image we loaded
				 // if we loaded every time, we would spam the network with hundreds of image requests

				if (!trickPlayLoading || Utilities.hasTimeIntervalElapsed(trickPlayLastLoadTime,1000)) {
					trickPlayUrl = url;
					trickPlayLoading = true;
					pointerNotOverSeekBar = false;
					trickPlayLastLoadTime = Utilities.setNewTime();
					 // if we attempt to re-use the img element & replace the src attribute, chrome may not display the new image (chrome bug).
					tpImg = new Image();
					tpImg.onerror = function(e) {
						tpImg.onload = undefined;
						trickPlayLoading = false;
						startTrickPlay(e, lastKnownImageNumber);
					};
					tpImg.onload = function() { // don't swap it in 'till we load the image, otherwise it will blink a bit too much.
						if (trickPlaySpinner.classList.contains('spin')) {
							trickPlaySpinner.classList.remove('spin');
						}
						if (trickPlayImage) {
							trickPlayContainer.removeChild(trickPlayImage);
						}
						trickPlayImage = tpImg;
						trickPlayContainer.appendChild(trickPlayImage);
						if(pointerNotOverSeekBar !== true) {
							trickPlayWrapper.style.display = 'block';
						}

						trickPlayLoading = false;
						// see if a new image has been requested while we loaded this one, if so, start loading the new one.
						if (trickPlayUrl != tpImg.src) {
							loadTrickPlayImage(trickPlayUrl);
						}
					}
					tpImg.src = url;
				}
				else {
					if (Utilities.hasTimeIntervalElapsed(trickPlayLastLoadTime,500)){
						if (!trickPlaySpinner.classList.contains('spin')) {
							trickPlaySpinner.classList.add('spin');
						}
					}
				}
			 };
			return {
				startTrickPlay: startTrickPlay,
				stopTrickPlay: stopTrickPlay
			}
		}());


		// helper functions
		Utilities = (function () {
			// functions pointers
			var matchParentNode, setNewTime, hasTimeIntervalElapsed, /*makeDraggable,*/ createCookie, readCookie, isMobile, msEdgeMode, getUserEventTime, toggleClassName, padStringLeft, getRandom, isTouchSupported, returnTime,
				setTimeAsString, isIE11;

			matchParentNode = function (node,target,func) {
				func(node);
				node = node.parentNode;
				while(node !== target) {
					matchParentNode(node,target,func);
					node = node.nextSibling;
				}
				var element; //your clicked element
				while(element.parentNode) {
					if(element.parentNode === target){
						mouseOverControls = true;
					}
					//display, log or do what you want with element
					element = element.parentNode;
				}
			};


            setNewTime = function () {
                return new Date().getTime();
            };


            hasTimeIntervalElapsed = function (startTime,interval) {
              return  setNewTime() - startTime > interval;
            };


/*  FUTURE DRAGGABLE IMPLEMENTATION
            makeDraggable = (function () {
				var removeDrag, addDrag, dragIt, positionReset, preventScrolling;
				var dragNode, type, calculatedOffsetValue, windowOffset;

				// reset the draggable node position and clean up event listeners
				removeDrag = function () {
                    console.log('remove type = ', type)
					dragNode.classList.remove('drag');
                    if (type = 'pointerdown') {
                        window.removeEventListener('pointerup', removeDrag, false);
                        window.removeEventListener('pointermove', dragIt, false);
                        return;
                    }
                    if (type === 'mousedown') {
                        window.removeEventListener('mousemove', dragIt, false);
                        window.removeEventListener('mouseup', removeDrag, false);
                        return;
                    }
                    if (type === 'touchstart') {
                        window.removeEventListener('touchmove', dragIt, false);
                        window.removeEventListener('scroll', preventScrolling, false);
                        window.removeEventListener('touchend', removeDrag, false);
                        return;
                    }
				};

				// set up drag events and calculate the draggable nodes offset values from the cursor
				addDrag = function (e) {
					dragNode = e.currentTarget;
                    type = e.type;
                    windowOffset = {
                        _X:  window.scrollX,
                        _Y: window.scrollY
                    }
                    if (type === 'touchstart') {
                        var e = e.targetTouches[0];
                    };
					// calculated offset value for the position of cursor from the top
					// and left of the draggable node,
					// needs to switch the sign of the number to work properly
					// used to keep the draggable node from jumping under the cursor
					// on the start of mouse move event
					calculatedOffsetValue = {
						offsetX: -(dragNode.offsetLeft - e.clientX),
						offsetY: -(dragNode.offsetTop - e.clientY)

					};
					// working for chrome
					//console.log('dragNode.offsetTop = ',dragNode.offsetTop);
					//console.log('e.clientY = ', e.clientY);
					//console.log('- __________________')
					//console.log('calculated offset value for Y = ',calculatedOffsetValue.offsetY);
					//console.log(' ');
					////console.log(dragNode.scrollTop);
					//console.log('e.clientY = ', e.clientY);
					//console.log('calculated offset value for Y = ',calculatedOffsetValue.offsetY)
					//console.log('- __________________')
					//console.log('dragNode.style.top = ', (e.clientY - calculatedOffsetValue.offsetY));
					//console.log(' ');
					//console.log('document.body.scrollTop = ', document.body.scrollTop);
					//console.log('- __________________')
					//console.log('dragNode.style.top w/ d.b.sT = ', (e.clientY - calculatedOffsetValue.offsetY) - document.body.scrollTop);
					//console.log('////////////////////////////////////////////')
                    if (type === 'pointerdown') {
                        console.log('caught pointer on dragnode');
                        console.log('e coors = ',e.clientX , e.clientY);
                        window.addEventListener('pointerup', removeDrag, false);
                        window.addEventListener('mousemove', dragIt, false);
                        //window.addEventListener('pointermove', dragIt, false);
                        return;
                    }
                    if (type === 'mousedown') {
                        console.log('there');
                        window.addEventListener('mouseup', removeDrag, false);
                        window.addEventListener('mousemove', dragIt, false);
                    }
                    if (type === 'touchstart') {
                        console.log('where');
                        window.addEventListener('touchmove', dragIt, false);
                        window.addEventListener('scroll', preventScrolling, false);
                        window.addEventListener('touchend', removeDrag, false);
                    }
				};

				// move the draggable node
				dragIt = function (e) {

                    console.log('drag type = ', type)
                    var evt = e;
                    if (type === 'touchstart') {
                        evt = e.targetTouches[0];
                    };
                    console.log('evt coors = ',evt.clientX , evt.clientY);
					dragNode.classList.add('drag');
					dragNode.style.top = (evt.clientY - calculatedOffsetValue.offsetY) + 'px';
					dragNode.style.left = (evt.clientX - calculatedOffsetValue.offsetX) + 'px';
				};

				// remove the style attribute attached to the draggable node if it exists
				// to reset the draggable nodes position for the next drag event
				positionReset = function () {
					if(typeof dragNode !== 'undefined') {
						dragNode.removeAttribute('style');
					}
				};

                //prevent dragging of node to cause scrolling in window
                preventScrolling = function () {
                    console.log('happening');
                    window.scrollTo( windowOffset._X, windowOffset._Y );
                };

				return {
					addDrag: addDrag,
					positionReset: positionReset
				}
			}());
*/

			createCookie = function(name,value,days) {
				if (days) {
					var date = new Date();
					date.setTime(date.getTime()+(days*24*60*60*1000));
					var expires = "; expires="+date.toGMTString();
				}
				else var expires = "";
				document.cookie = name+"="+escape(value)+expires+"; path=/";
			};

			readCookie = function(name) {
				var nameEQ = name + "=";
				var ca = document.cookie.split(';');
				for(var i=0;i < ca.length;i++) {
					var c = ca[i];
					while (c.charAt(0)==' ')
						c = c.substring(1,c.length);
					if (c.indexOf(nameEQ) == 0)
						return unescape(c.substring(nameEQ.length,c.length));
				}
				return null;
			};

			// best guess mobile device
			isMobile = (function() {
				var isMobile = false; //initiate as false
				var isTouch = 'ontouchstart' in document.documentElement; //check for touch capabilities, return boolean

				// device detection
				if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent)
					|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) {
					isMobile = true;
				}
				return (isMobile && isTouch);
			}());

			// detect if is MS edge and the mode that you are in, tablet or desktop
			// may need to revisit this if other browsers start supporting pointer events
			msEdgeMode = function () {
				var scrollDiv, scrollWidth, tablet, desktop;
				if (window.PointerEvent) {
					scrollDiv = document.createElement("div");
					scrollDiv.style.cssText = 'width:100px;height:100px;overflow:scroll !important;position:absolute;top:-9999px';
					document.body.appendChild(scrollDiv);
					scrollWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
					document.body.removeChild(scrollDiv);
					return scrollWidth > 0 ? 'desktop' : 'tablet';
				} else {
					return false;
				}
			};

			// toggle between two class names
			// used for showing hiding elements,
			// switching between font awesome icons,
			// starting css animations
			toggleClassName = function (node, class1, class2) {
				if (arguments.length > 2) {
					if (node.classList.contains(class1)) {
						node.classList.remove(class1);
						node.classList.add(class2);
					} else {
						node.classList.remove(class2);
						node.classList.add(class1);
					}
				}
			};

			// takes a string value an pads it to a given length
			padStringLeft = function (string,pad,length) {
				return (new Array(length+1).join(pad)+string).slice(-length);
			};

			// generate random number
			getRandom = function () {
				return Math.floor(Math.random() * Math.pow(10,8));
			};

			// check if touch is supported
			isTouchSupported = (function () {
				var msTouchEnabled = window.navigator.msMaxTouchPoints;
				var generalTouchEnabled = "ontouchstart" in document.createElement("div");
				if (msTouchEnabled || generalTouchEnabled) { return true }
				return false;
			}());

			// get the display times, current time and video duration
			returnTime = function(time) {
				var hours, minutes, seconds, durationInMinutes;
				durationInMinutes = Math.floor(time / 60);
				minutes = durationInMinutes % 60;
				hours = Math.floor(durationInMinutes / 60);
				seconds = Math.floor(time % 60);
				return setTimeAsString(hours,minutes,seconds);
			};

			// return hours, minutes and seconds as a string
			setTimeAsString = function (hours,minutes,seconds) {
				if(hours > 0) {
					return Utilities.padStringLeft(hours,'0',2)+':'+Utilities.padStringLeft(minutes,'0',2)+':'+Utilities.padStringLeft(seconds,'0',2);
				} else {
					return Utilities.padStringLeft(minutes,'0',2)+':'+Utilities.padStringLeft(seconds,'0',2);
				}
			};

			// need to sniff out ie11 on windows 8.1
			// not sure how this effects windows 10, ie11 users?
			isIE11 = (function () {
				var str = navigator.userAgent;
				return /Trident.*rv[ :]*11\./.test(str);
			}());

			return {
				matchParentNode: matchParentNode,
                setNewTime: setNewTime,
                hasTimeIntervalElapsed: hasTimeIntervalElapsed,
				//makeDraggable: makeDraggable,
				createCookie: createCookie,
				readCookie: readCookie,
				isMobile: isMobile,
				msEdgeMode: msEdgeMode,
				getUserEventTime: getUserEventTime,
				toggleClassName: toggleClassName,
				getRandom: getRandom,
				padStringLeft: padStringLeft,
				isTouchSupported: isTouchSupported,
				returnTime: returnTime,
				isIE11: isIE11
			}
		}());


		// sets and gets the last known time stamp for when the user interacted with the player
		LastUserInteractionTime = (function () {
			var lastInteraction, setLastInteractionTime, getLastInteractionTime;

			setLastInteractionTime = function (customTime) {
				if (customTime === undefined) {
					lastInteraction = Utilities.setNewTime();
				} else {
					lastInteraction = customTime;
				}
			};

			getLastInteractionTime = function () {
				return lastInteraction;
			};


			return {
				setLastInteractionTime: setLastInteractionTime,
				getLastInteractionTime: getLastInteractionTime
			};
		}());


		// controls the visibility of the player controls
		ControlVisibility = (function () {
			// functions pointers
			var setEndVideoState,
				setTouchStartState,
				forceControlsObjectState,
				checkControlState,
				isMouseOverControls,
				hideControls,
				showControls;

			//check to see whether the mouse is over the controls
			isMouseOverControls = function (e) {
				var triggerCheck, matchParentNode;
				if (Utilities.isMobile) {return}
				// corner case for desktop where mouse was in down state on seekbar but was released in up state not over seekbar
				// will make sure controls are hidden correctly
				matchParentNode = function () {
					triggerCheck = false;
					var element = e.target;
					while(element.parentNode) {
						if (element.parentNode === wrapper) {
							mouseOverControls = !mouseOverControls;
							// mouse not over controls change mouseOverControls state
							break;
						} else if (element.parentNode === controls) {
							// mouse still over controls do not change mouseOverControls state
							break;
						}
						element = element.parentNode;
					}
					window.removeEventListener('mousemove',matchParentNode);
				};
				if (e.type === 'mouseover')  {mouseOverControls = true;}

				if (e.type === 'mouseout') {mouseOverControls = false;}
				if	(e.type === 'touchend') {
					setTimeout (function () {mouseOverControls = false}, 100);
				}
				if (e.type === 'mouseup') {
					if (e.target === seekbar) {
						TrickPlayBehavior.stopTrickPlay(e);
					}
					e.stopPropagation();
					triggerCheck = true;
					//check for next mouse move
					window.addEventListener('mousemove',matchParentNode,false);
					setTimeout (function () {
						if(triggerCheck === true) {
							window.removeEventListener('mousemove',matchParentNode);
							if (window.PointerEvent) {
								LastUserInteractionTime.setLastInteractionTime(MouseVisibility.handlePointerEvents());
							} else {
								LastUserInteractionTime.setLastInteractionTime(0);
							}
							mouseOverControls = false;
						}
					},100);
				}
				if (e.target !== seekbar) { TrickPlayBehavior.stopTrickPlay(e);}
			};

			//
			checkControlState = function () {
				if (controlsVisible && !controls.classList.contains('fade-out')) {
					hideControls();
					return;
				}
				if (!controlsVisible && controls.classList.contains('fade-out')) {
					showControls();
					return;
				}
				//sanity checks (sync control visibility state withe actual visibility of the controls)
				if (!controlsVisible && !controls.classList.contains('fade-out')) {
					controlsVisible = true
				}
			};

			//
			hideControls = function () {
				if (!controls.classList.contains('fade-out')) {
					controls.classList.add('fade-out');
					MouseVisibility.hideCursor();
					controls.style.display = 'none';
					if (trickPlayWrapper.style.display !== 'none') {
						trickPlayWrapper.style.display = 'none';
					}
				}
			};

			//
			showControls = function () {
				if (controls.classList.contains('fade-out')) {
					controls.style.display = 'block'; //ENABLES CONTROLS INTERACTION PRIOR TO FADE TRANSITION
					controls.classList.remove('fade-out');
					MouseVisibility.showCursor();
				}
			};

			// set controls visibility at end of video
			setEndVideoState = function () {
				// controls object's visibility and interactive properties must be set to false
				// if not it will result in the player controls fading out instead of
				// remaining visible on the screen at the end of video
				//forceControlsObjectState();
				if (!video.paused) {video.pause()} // some browsers do not set video pause on video ended event
				if (play.classList.contains('control-icon-pause')) {
					play.classList.add('control-icon-play');
					play.classList.remove('control-icon-pause');
				}
				playButtonOverlay.style.display = 'block';
			};

			// set controls visibility on touchstart/mousedown event
			setTouchStartState = function (e) {
				if (e.target === e.currentTarget) {
					e.stopPropagation();
					forceControlsObjectState();
				}
			};


			// force state of controls object so video controls will always
			// be displayed at end of video and during touch start events
			forceControlsObjectState = function () {
				if (controlsVisible) {controlsVisible = false}
			};

			return {
				isMouseOverControls: isMouseOverControls,
				checkControlState: checkControlState,
				showControls: showControls,
				setEndVideoState: setEndVideoState,
				setTouchStartState: setTouchStartState
			}
		}());


		// controls the visibility of the panel controls
		PanelVisibility = (function () {
			// function pointers
			var toggleWrapper, setTouchShieldEventBehavior, setControlsVisibilityFromPanel, getActivePanel,
				setActivePanel, setPlayerOverlayButton, hidePanelOnBlur;
			// show or hide a wrapper element or secondary control panel
			toggleWrapper = function (node) {
				if (node === touchShield) {
					if (node.classList.contains('flex')) {
						node.classList.remove('flex');
					} else {
						node.classList.add('flex');
					}
				} else {
					if (node.classList.contains('show')) {
						node.classList.remove('show');
						/*					// for draggable behaviors
						 Utilities.makeDraggable.positionReset();
						 if (node === touchShield) {
						 //wrapper.addEventListener('mousemove', MouseVisibility.setMouseTimeout, false); //ADD IT BACK AFTER REMOVING THIS IN MOUSEVISIBILITY.SETMOUSETIMEOUT
						 }
						 */
					} else {
						node.classList.add('show');
					}
				}
				if (node.hasAttribute('id') && (node.getAttribute('id') === 'volumeController')) {manageResizeEvent(node)}
			};

			setTouchShieldEventBehavior = function (e) {
				e.stopPropagation();
				if (e.target === touchShield || e.target.classList.contains('close-wrapper') || e.target.classList.contains('close')) {
					toggleWrapper(touchShield);
					toggleWrapper(getActivePanel());
				}
			};

			// sets up the visibility of the controls to work with the panel components
			 setControlsVisibilityFromPanel = function () {
				LastUserInteractionTime.setLastInteractionTime(0);
			};

			// GET THE ACTIVE CONTROL PANEL
			getActivePanel = function () {
				for (var property in controllerPanels) {
					if ( controllerPanels.hasOwnProperty(property) && controllerPanels[property].classList.contains('show')) {
						return controllerPanels[property];
					}
				}
			};

			// set a control panel as active and return the active node to the calling function
			setActivePanel = function (target) {
				for (var property in controllerPanels) {
					if ( controllerPanels.hasOwnProperty(property) && (target.classList.contains(property) || target.parentNode.classList.contains(property)) ) {
						return controllerPanels[property];
					}
				}
			};

			// toggle player overlay button display when showing and hiding a panel
			setPlayerOverlayButton = function () {
				if ( playButtonOverlay.classList.contains('no-show') ) {
					playButtonOverlay.classList.remove('no-show');
				} else {
					playButtonOverlay.classList.add('no-show');
				}
			};

			//on window blur check to see if a panel is open and if so close it
			hidePanelOnBlur = function () {
				for (var property in controllerPanels) {
					// stats panel is only panel that will not close by default
					// add other property values to condition to keep them open and available for debugging
					if (controllerPanels.hasOwnProperty(property) && property !== 'stats' && controllerPanels[property].classList.contains('show')) {
						toggleWrapper(touchShield);
						toggleWrapper(getActivePanel());
					}
				}
			};

			return {
				toggleWrapper: toggleWrapper,
				setTouchShieldEventBehavior: setTouchShieldEventBehavior,
				setControlsVisibilityFromPanel: setControlsVisibilityFromPanel,
				hidePanelOnBlur: hidePanelOnBlur,
				setActivePanel: setActivePanel,
				setPlayerOverlayButton: setPlayerOverlayButton
			};
		}());


		// volume settings behavior
		VolumeSettings = (function () {
			var muted, setMute, delegateVolumeUI, setMuteUI, volumeAtMute, setVolumeUI, volumeSliderWidth;

			muted = false;

			/**
			 * @function setMute
			 * @summary sets the video player's mute state
			 * @description setMute() will toggle the player mute state and then will call setMuteUI to
			 * 		mirror the new mute state. This will trigger a volume change event in the player which will call
			 *		delegateVolumeUI.
			 * @see {delegateVolumeUI}
			 */
			setMute = function () {
				video.muted = !video.muted;
			};

			/**
			 * @function delegateVolumeUI()
			 * @summary decides how to route a volume event in the player
			 * @description Triggered by a user interaction or a software related trigger. The function decides
			 * 		how to handle the event so that the volume setting in the user interface reflects the correct state of the
			 * 		player. The newVolume variable could be a preset volume setting such as a cookie value, or reflect
			 * 		a state change in a event call chain. An example of an event call chain - user changes volume
			 * 		using volume slider (input event), this action creates a volume change event that loops back
			 * 		through the delegateVolumeUI function.
			 * @param [event] e - The event that called the function.
			 *
			 * @see {setMuteUI}
			 * @see {setVolumeUI}
			 */
			delegateVolumeUI = function (e) {
				var newVolume, externalVolumeChange;
				externalVolumeChange = function () {
					newVolume = Math.round(video.volume * 100);
					if (video.muted)
						newVolume=0;
					setVolumeUI('external', newVolume);
				};

				if (e !== undefined){
					if (e.type === 'volumechange' && (video.muted || muted)) {
						setMuteUI();
						return;
					} else if (e.type === 'volumechange') {
						externalVolumeChange();
						return;
					}
					if (e.type === 'change' || e.type === 'input') {
						video.volume = Number(volumeSlider.value / 100);
						setVolumeUI('input', volumeSlider.value);
					}
				} else {
					externalVolumeChange();
				}
			};

			/**
			 * @function setMuteUI
			 * @summary Sets the mute button state to reflect the opposite of the video mute state.
			 * @description By default the mute button will show a volume icon with an x next to it. This indicates
			 * 		to the user that if they click the mute button the player will mute. Clicking the mute button in
			 * 		this state will mute the player and change the button to a volume icon with sound waves coming
			 * 		out of it. Thus indicating to the user that clicking the mute button while the player is muted
			 * 		will return the volume to the level it was prior to setting the video player to mute.
			 * @see {setVolumeUI}
			 **/
			setMuteUI = function () {
				if (video.muted) {
					volumeAtMute = volumeSlider.value;
					muted = true;
					muteIcon.classList.remove('control-icon-volume-on');
					muteIcon.classList.add('control-icon-volume-mute');

					setVolumeUI('mute', 0);
				} else {
					muted = false;
					muteIcon.classList.remove('control-icon-volume-mute');
					muteIcon.classList.add('control-icon-volume-on');
					setVolumeUI('mute', Math.round(video.volume*100));
				}
			};

			/**
			 * @function setVolumeUI
			 * @summary sets the volume slider and display to mirror the current video state
			 * @description setVolumeUI sets the volume setting user interface to match what the current video state
			 * 		is. The value is used to set the volume numeric value as well as the input range value. The type
			 * 		is used to discern what user interface values to set. Mute and input values reflect user actions
			 * 		External reflects something external to a user action. This is triggered by an internal volume
			 * 		change event that a user does not immediately and directly cause. For example an init player
			 * 		setup with a cookied volume setting, or a chained event fired after an initial user action.
			 * @param {string} type - The type of user action that precipitated the call.
			 * @param {string} value - The value of the current player.volume.
			 **/
			setVolumeUI = function (type, value) {
				if (type === 'input') {
					volumeDisplay.innerHTML = value;
					if(video.muted) {video.muted = false}
				}
				else if (type === 'mute' || type === 'external') {
					volumeSlider.value = value;
					volumeDisplay.innerHTML = value;
				}
			};

			// control the dynamic parts of the volume slider layout in response to orientation changes
			// css media queries in default
			// css also control aspects of layout
			volumeSliderWidth = function () {
				var videoWidth = video.clientWidth > 960 ? 960 : video.clientWidth;

				// reset style attribute on volume range input
				if (volumeSlider.hasAttribute('style')) {
					volumeSlider.removeAttribute('style');
				}
				volumeSlider.style.width = Number(videoWidth - 178) + 'px';
			};

			return {
				delegateVolumeUI: delegateVolumeUI,
				volumeSliderWidth: volumeSliderWidth,
				setMute: setMute
			};
		}());


		// all behavior associated with the seekbar control including time displays
		SeekBarBehavior = (function () {
			// functions pointers
			var setDurationTime, setCurrentDisplayTime, syncSeekToCurrentTime, syncCurrentTimeToSeek,
				syncCurrentDisplayTimeToSeek, startSeekbarTimer, stopSeekbarTimer;

			var updateTimer;

			// set the video duration time displayed in the player on player load
			setDurationTime = function (duration) {
				var number = Number(duration);
				durationTime.innerHTML = Utilities.returnTime(number);
			};

			// set the current time display in the player on player load
			setCurrentDisplayTime = function () {
				var now = video.currentTime;
				syncSeekToCurrentTime(now, dashPlayer.stream.duration);
				currentTime.innerHTML =  Utilities.returnTime(now);
			};

			// sync the seek bar to the current time value
			syncSeekToCurrentTime = function (timeNow,timeDuration) {
				seekbar.value = Math.floor((timeNow / timeDuration) * seekbar.max);
			};

			// sync the player current time to the user input on the seek bar (touchend/mouseup event)
			syncCurrentTimeToSeek = function () {
				video.currentTime =  Math.floor((seekbar.value * dashPlayer.stream.duration) / seekbar.max);
			};

			// sync the display time to the user input when manipulating the seek bar
			syncCurrentDisplayTimeToSeek = function () {
				if (isNaN(dashPlayer.stream.duration))
					currentTime.innerHTML =  Utilities.returnTime(0);
				else {
					currentTime.innerHTML =  Utilities.returnTime(Math.round(video.currentTime));
				}
			};


			// set seekbar and time display interval timer
			// replaces media event timeupdate which is not reliable
			startSeekbarTimer = function () {
				updateTimer = setInterval (function () {
					SeekBarBehavior.setCurrentDisplayTime();
					SeekBarBehavior.syncCurrentDisplayTimeToSeek();
				}, timingObj.seekbarInterval);
			};

			stopSeekbarTimer = function () {
				clearTimeout(updateTimer);
			};

			return {
				setDurationTime: setDurationTime,
				setCurrentDisplayTime: setCurrentDisplayTime,
				syncCurrentTimeToSeek: syncCurrentTimeToSeek,
				syncCurrentDisplayTimeToSeek: syncCurrentDisplayTimeToSeek,
				startSeekbarTimer: startSeekbarTimer,
				stopSeekbarTimer: stopSeekbarTimer
			}
		}());


		// controls the visibility of the mouse cursor and display of controls on mousemove if controls are hidden
		// controls the call to trick play for 10 second images
		MouseVisibility = (function () {
			var hideCursor, showCursor, checkIfMouseIsStatic, setMouseTimeout, mouseInTheHouse, handlePointerEvents;
			var xCoor, yCoor;

			hideCursor = function () {
				if (touchShield.classList.contains('flex')) {return}
				if (!wrapper.classList.contains('cursor-hidden') && !video.classList.contains('cursor-hidden')) {
					wrapper.classList.add('cursor-hidden');
					video.classList.add('cursor-hidden');
				}
			};

			showCursor = function () {
				if (wrapper.classList.contains('cursor-hidden') && video.classList.contains('cursor-hidden')) {
					wrapper.classList.remove('cursor-hidden');
					video.classList.remove('cursor-hidden');
				}
			};

			// sanity check for phantom mousemove events triggered by a click event (bug in chrome)
			checkIfMouseIsStatic = function (e) {
				var areTheyTheSame = e.clientX == xCoor && e.clientY == yCoor;
				xCoor = e.clientX;
				yCoor = e.clientY;
				return areTheyTheSame;
			};

			// is the mouse still in the browser document
			mouseInTheHouse = function (e) {
				e = e ? e : window.event;
				var from = e.relatedTarget || e.toElement;
				//if mouse is moving from outside the browser window or from the parent HTML tag
				if (!from || from.nodeName == 'HTML') {
					e.stopPropagation();
					// check if this Edge (for now - this will likely be triggered by other browsers in the future)
					if (window.PointerEvent) {
						LastUserInteractionTime.setLastInteractionTime(handlePointerEvents());
					} else {
						LastUserInteractionTime.setLastInteractionTime(0);
					}
					mouseOverControls = false;
				}
			};

			// have to handle IE implementation of pointer events
			// may need to change this up as more browsers implement the pointer spec
			handlePointerEvents = function () {
				if (touchShield.classList.contains('flex')) {return 0}
				var setDelay = Utilities.setNewTime();
				setDelay = setDelay - 1500;
				return setDelay;
			};

			setMouseTimeout = function(e) {
				if (e.target === seekbar) {
                    if (window.PointerEvent && controlVisibilityTime > 0 && !Utilities.hasTimeIntervalElapsed(controlVisibilityTime,700)) {
                        return;
                    }
					LastUserInteractionTime.setLastInteractionTime();
					TrickPlayBehavior.startTrickPlay(e);
					xCoor = e.clientX;
					yCoor = e.clientY;
					return;
				}
				if (touchShield.classList.contains('flex')) {
					LastUserInteractionTime.setLastInteractionTime(timingObj.hideControlsThreshold * 2);
					return;
				}

				// launching the player in a new window this will detect mousemove and show the controls
				// skips tablet mode in Edge so that a single tap will not pause video and will instead
				// bring up the controls
				if (!checkIfMouseIsStatic(e) && !(Utilities.msEdgeMode() === 'tablet')) {
                    // check state of controls, if controls are not visible set a time that can be checked allowing time
                    // to consume other events that could initiate unintended behaviors
                    if (controls.classList.contains('fade-out')) {
                         controlVisibilityTime = Utilities.setNewTime();
                    }
					ControlVisibility.showControls();
					LastUserInteractionTime.setLastInteractionTime();
				}
			};
			return {
				setMouseTimeout: setMouseTimeout,
				hideCursor: hideCursor,
				showCursor: showCursor,
				mouseInTheHouse: mouseInTheHouse,
                handlePointerEvents: handlePointerEvents
			};
		}());


		// bitrate selection and display behavior
		QualitySettingsBehavior = (function () {
			// ARRAYS
			var adaptPoints, adaptNames;
			// the current and target adaptPoints indexes returned and the current bitrate representation
			// in the get bitrate array for loop
			var currentAdaptPointIndex, targetAdaptPointIndex, rep, currentBitrate;
			// set interval reference
			var bitrateUpdateTimer;
			// functions
			var getBitrateArray, buildBitrateSelectionMenu, setTargetBitrate, updateCurrentBitrate, startBitrateTimer;
			// related to building dom nodes for quality setting menu in ui
			var menuItem, value, menuItems;

			// load available video bitrates and cap values. this is ugly because we have to convert bitrate to index\Size
			adaptPoints = [];
			adaptNames = [];
			currentAdaptPointIndex = -1; // where we are
			targetAdaptPointIndex = -1; // where we want to adapt to

			// get bitrates from dash core
			getBitrateArray = function () {
				var streamSegmentIndex = dashPlayer.stream.getStreamSegmentIndexAtStreamTime(video.currentTime);
				var mediaSegmentInfo = dashPlayer.stream.getMediaSegmentIndexAtStreamSegmentIndex(streamSegmentIndex);
				var currentPeriod = dashPlayer.stream.periods[mediaSegmentInfo.periodIndex];

				targetAdaptPointIndex = currentPeriod.videoAdaptationSet.representations.length - 1;
				for (var i = 0; i < currentPeriod.videoAdaptationSet.representations.length; ++i) {
					rep = currentPeriod.videoAdaptationSet.representations[i];
					adaptNames.push(rep.height + 'p');
					if (i < currentPeriod.videoAdaptationSet.representations.length-1) {
						adaptPoints.push((rep.bitrate + (currentPeriod.videoAdaptationSet.representations[i + 1].bitrate - rep.bitrate) / 2) / 1000);
					} else {
						adaptPoints.push(999999999);
					}
					if (dashPlayer.maxVideoBitrate && dashPlayer.maxVideoBitrate >= adaptPoints[i]) {
						targetAdaptPointIndex = i;
					}
					if (rep.height == video.videoHeight) {
						currentAdaptPointIndex = i;
						currentBitrate = adaptNames[i];
					}
				}
				// need more checking here to make sure bitrates still match up one to one
				if (qualityMenu.innerHTML === '') {
					buildBitrateSelectionMenu();
				} else {
					updateCurrentBitrate(currentBitrate);
				}
			};

			// build bitrate menu
			buildBitrateSelectionMenu = function () {
				for (var i = adaptNames.length-1; i >= 0; --i) {
					menuItem = document.createElement('li');
					menuItem.classList.add('bitrate');
					value = adaptNames[i];
					menuItem.dataset.bitrate = value;
					menuItem.innerHTML = value;
					if (i == targetAdaptPointIndex) {
						menuItem.classList.add('target');
						qualityDetailsTarget.innerHTML = value;
					}
					if (i == currentAdaptPointIndex) {
						qualityDetailsCurrent.innerHTML = value;
					}
					menuItem.point = adaptPoints[i];
					(function (pointer) {
						menuItem.addEventListener('click', function (e) {setTargetBitrate(e, pointer)}, false);
					}(menuItem.point));
					qualityMenu.appendChild(menuItem);
				}
				menuItems = document.querySelectorAll('.bitrate');
			};

			//SET TARGET BITRATE WHEN USER CLICKS ON AN OPTION IN THE QUALITY SETTINGS MENU
			setTargetBitrate = function (e, bitrateIndex) {
				e.stopPropagation();
				for (var i = 0; i < menuItems.length; i++) {
					if (menuItems[i].classList.contains('target')) {
						menuItems[i].classList.remove('target')
					}
				}
				e.target.classList.add('target');
				qualityDetailsTarget.innerHTML = e.target.dataset.bitrate;
				dashPlayer.maxVideoBitrate = bitrateIndex;
			};

			// update current bitrate in menu and on main controls
			updateCurrentBitrate = function (current) {
				if (typeof current === "undefined") {
					qualityCurrentDisplay.innerHTML = '';
					qualityDetailsCurrent.innerHTML = '';
				} else {
					qualityCurrentDisplay.innerHTML = current;
					qualityDetailsCurrent.innerHTML = current;
				}
			};

			//timer that updates the current bitrate selection on the main controls and the quality selection menu
			startBitrateTimer = function () {
				bitrateUpdateTimer = setInterval(getBitrateArray,timingObj.bitrateInterval);
			};

			return {
				startBitrateTimer: startBitrateTimer
			};
		}());


		StatsSettingsBehavior = (function () {
			var Graph2, graphInstance, numberWithCommas, startStatsTimer;

			// new graph, this one has an x axis of seconds playing
			Graph2 = function() {
				var graph = this;
				this.slices = [];
				this.widthTimeMs = (dashPlayer.MAX_BUFFER_TIME*2+dashPlayer.MAX_SOURCE_BUFFER_TIME)*1000;
				this.playDuration=0;
				this.lastSliceTime = Utilities.setNewTime();
				this.lastVideoTime = 0;

				this.iteration = function() {
					// Only collect slice data and update the graph if user is playing
					if (!video.paused) {
						var slice = {
							bitrateCount:0,
							averageBitrate:0,
							bandwidth:dashPlayer.getCurrentDownloadBitrate(),
							playStartTime:0,
							playEndTime:0,
							videoStartTime:video.currentTime,
							videoEndTime:0};
						var timeNow = Utilities.setNewTime();

						var dt = timeNow-graph.lastSliceTime;

						slice.playStartTime = graph.playDuration;
						graph.playDuration += dt;
						slice.playEndTime = graph.playDuration;

						// find all downloaded segments within this time slice
						if (dashPlayer.stream.videoStreamComponent && dashPlayer.stream.videoStreamComponent.buffer.length > 0) {
							var bitrateAcc = 0;
							slice.bitrateCount = 0;
							var foundStart=false;

							for (var i=0;i<dashPlayer.stream.videoStreamComponent.buffer.length;++i) {
								var seg = dashPlayer.stream.videoStreamComponent.buffer[i];
								// if this segment is within the slice time
								if (seg.timestamp > graph.lastSliceTime && seg.timestamp < timeNow) {
									if (!foundStart) {
										slice.videoStartTime = seg.startTime;
										foundStart=true;
									}
									//if (seg.startTime+dashPlayer.stream.videoAdaptationSet.segmentDuration < slice.videoEndTime)
									slice.videoEndTime = seg.startTime+seg.period.segmentDuration;
									graph.lastVideoTime = seg.startTime+seg.period.segmentDuration;
									bitrateAcc += seg.bitrate;
									++slice.bitrateCount;
								}
							}
							if (slice.bitrateCount > 0) { // Use the averag bitrate for segments downloaded within this slice
								slice.averageBitrate = bitrateAcc/slice.bitrateCount;
								graph.slices.push(slice);
							} else {
								if (graph.slices.length > 0) {
									var capacityDiff = Math.abs(graph.slices[graph.slices.length-1].bandwidth - slice.bandwidth);
									if (capacityDiff > 500) {
										slice.videoStartTime = graph.slices[graph.slices.length-1].videoEndTime;
										slice.videoEndTime = graph.slices[graph.slices.length-1].videoEndTime;
										slice.averageBitrate = dashPlayer.getLatestVideoBitrate();
										graph.slices.push(slice);
									}
								}
							}
						}
						//graph.slices.push(slice);

						// cull any old slices that fell off the back of the graph
						while (graph.slices.length > 0 && (graph.slices[0].playEndTime < (graph.playDuration-(graph.widthTimeMs+graph.widthTimeMs/4)))) {
							graph.slices.splice(0,1);
						}
						// paint the Graph
						// X axis should be in seconds playing (slice.playStartTime).
						// Y axis should be in kbps

						// determine the graph bounds (minX,maxX,minY=0,maxY)
						var maxX = graph.playDuration;
						var minX = maxX - graph.widthTimeMs;
						var minY = 0;
						var maxY = 250;
						var videoCurrentTime = video.currentTime;
						var playPositionX = 0;
						for (var i=0;i<graph.slices.length;++i) {
							if (graph.slices[i].averageBitrate > maxY)
								maxY = graph.slices[i].averageBitrate;
							if (graph.slices[i].bandwidth > maxY)
								maxY = graph.slices[i].bandwidth;
						}
						// determine the position of the current video time.
						for (var i=graph.slices.length-1;i>=0;--i) {
							if (graph.slices[i].videoStartTime < videoCurrentTime) {
								var sliceDirationS = graph.slices[i].videoEndTime-graph.slices[i].videoStartTime;
								var playDuration = graph.slices[i].playEndTime-graph.slices[i].playStartTime;
								if (graph.slices.length > i+1)
									playDuration = graph.slices[i+1].playStartTime-graph.slices[i].playStartTime;
								var dt = video.currentTime-graph.slices[i].videoStartTime;
								var offsetRatio = dt/sliceDirationS;
								playPositionX = graph.slices[i].playStartTime+playDuration*offsetRatio;
								break;
							}
						}

						// plot the graph
						var canvas = document.getElementById('brCanvas');
						var ctx = canvas.getContext('2d');
						// Fill with a white background
						ctx.clearRect(0,0,canvas.width,canvas.height);

						// calculate the graph X,Y scalars
						var xScalar = (canvas.width-1) / (maxX-minX);
						var yScalar = (canvas.height-1) / (maxY-minY);

						ctx.lineWidth = 2;
						// Draw the bandwidth
						var gr = ctx.createLinearGradient(0,0,0,(canvas.height-1));
						gr.addColorStop(0,"rgba(0, 176, 0, 0.7)");
						gr.addColorStop(1,"rgba(0, 176, 0, 0.1)");
						ctx.beginPath();
						ctx.moveTo(0,(canvas.height-1));
						if (graph.slices.length > 0)
							ctx.lineTo(0,  (canvas.height-1) - yScalar*graph.slices[0].bandwidth );
						for (var i=0;i<graph.slices.length;++i) {
							var slice = graph.slices[i];
							ctx.lineTo(xScalar*(slice.playEndTime-minX),  (canvas.height-1) - yScalar*slice.bandwidth );
						}
						if (graph.slices.length > 0) {
							ctx.lineTo((canvas.width-1),  (canvas.height-1) - yScalar*graph.slices[graph.slices.length-1].bandwidth);
							ctx.lineTo((canvas.width-1),  (canvas.height-1));
						} else
							ctx.lineTo((canvas.width-1),  (canvas.height-1));
						ctx.closePath();
						ctx.fillStyle=gr;
						ctx.fill();

						// Draw the average bitrate
						var gr = ctx.createLinearGradient(0,0,0,(canvas.height-1));
						gr.addColorStop(0,"rgba(80, 80, 255, 1)");
						gr.addColorStop(1,"rgba(80, 80, 255, 0.3)");
						ctx.beginPath();
						ctx.moveTo(0,(canvas.height-1));
						if (graph.slices.length > 0)
							ctx.lineTo(0,  (canvas.height-1) - yScalar*graph.slices[0].averageBitrate );
						for (var i=0;i<graph.slices.length;++i) {
							var slice = graph.slices[i];
							ctx.lineTo(xScalar*(slice.playEndTime-minX),  (canvas.height-1) - yScalar*slice.averageBitrate );
						}
						if (graph.slices.length > 0) {
							ctx.lineTo((canvas.width-1),  (canvas.height-1) - yScalar*graph.slices[graph.slices.length-1].averageBitrate);
							ctx.lineTo((canvas.width-1),  (canvas.height-1));
						} else
							ctx.lineTo((canvas.width-1),  (canvas.height-1));
						ctx.closePath();
						ctx.fillStyle=gr;
						ctx.fill();

						// Draw the play position
						var x1 = xScalar*(playPositionX-minX);
						ctx.beginPath();
						ctx.strokeStyle="#FFA000";
						ctx.moveTo(x1,0);
						ctx.lineTo(x1,(canvas.height-1));
						ctx.stroke();


						graph.lastSliceTime = timeNow;
					} else
						graph.lastSliceTime = Utilities.setNewTime();

				};
			};

			graphInstance = new Graph2();

			numberWithCommas = function (x) {
				return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			};


			startStatsTimer = function () {
				var decoderBufferDuration = dashPlayer.getDecoderBufferDuration();
				var bufferDuration = dashPlayer.getJSBufferDuration();
				var bufferPercent = ((bufferDuration+decoderBufferDuration) / (dashPlayer.MAX_BUFFER_TIME+dashPlayer.MAX_SOURCE_BUFFER_TIME) * 100);
				if (bufferPercent > 100) { bufferPercent=100; }
				bufferMeter.innerHTML = '&nbsp;'+(bufferDuration+decoderBufferDuration).toFixed(2)+'s';
				bufferMeter.style.width = bufferPercent.toFixed(0)+'%';
				if (bufferPercent > 60) {
					bufferMeter.style.backgroundColor = '#008000';
				} else if (bufferPercent > 40) {
					bufferMeter.style.backgroundColor = '#808000';
				} else {
					bufferMeter.style.backgroundColor = '#900000';
				}

				var repIndex = document.getElementById('repIndex');
				if (!repIndex)
					return;
				document.getElementById('repIndex').innerHTML = (dashPlayer.getCurrentVideoRepresentationIndex()+1)+'/'+dashPlayer.getVideoRepresentationCount();
				if (dashPlayer.getCurrentVideoRepresentationIndex() < dashPlayer.getLatestVideoRepresentationIndex()) {
					adaptDirection.innerHTML = '+';
				} else if (dashPlayer.getCurrentVideoRepresentationIndex() > dashPlayer.getLatestVideoRepresentationIndex()) {
					adaptDirection.innerHTML = '-';
				} else {
					adaptDirection.innerHTML = '';
				}

				var streamSegmentIndex = dashPlayer.stream.getStreamSegmentIndexAtStreamTime(video.currentTime);
				var mediaSegmentInfo = dashPlayer.stream.getMediaSegmentIndexAtStreamSegmentIndex(streamSegmentIndex);
				var currentPeriod = dashPlayer.stream.periods[mediaSegmentInfo.periodIndex];
				var vidId = thisMovieId;
				if (currentPeriod.movieId)
					vidId = currentPeriod.movieId;
				document.getElementById('videoId').innerHTML = vidId;

				var bandwidth = dashPlayer.getCurrentDownloadBitrate();
				document.getElementById('dlBitrate').innerHTML = numberWithCommas(bandwidth.toFixed(0));
				var vidBitrate = dashPlayer.getCurrentVideoBitrate();
				document.getElementById('vidBitrate').innerHTML = numberWithCommas(vidBitrate.toFixed(0));
				document.getElementById('vidDimensions').innerHTML = video.videoWidth+'<small>x</small>'+video.videoHeight;

				document.getElementById('vidLatency').innerHTML = dashPlayer.getLatencyMS().toFixed(0);


				var droppedFrames = 0;
				if(typeof video.getVideoPlaybackQuality === 'function') { // Firefox
					var vdeoPlaybackQuality = video.getVideoPlaybackQuality();
					if (vdeoPlaybackQuality) {
						droppedFrames = vdeoPlaybackQuality.droppedVideoFrames;
					}
				}
				else if ("webkitDroppedFrameCount" in video) { // Chrome/Safari
					droppedFrames = video.webkitDroppedFrameCount;
				}

				<!-- error stats -->
				document.getElementById('vidDroppedFrames').innerHTML = droppedFrames;
				if (dashPlayer.stream) {
					document.getElementById('freezes').innerHTML = dashPlayer.stream.freezeCount;
					document.getElementById('adaptFails').innerHTML =  dashPlayer.stream.adaptFailureCount;
					document.getElementById('droppedSources').innerHTML = dashPlayer.stream.deletedSourceCount;
					document.getElementById('congestionRescue').innerHTML = dashPlayer.stream.congestionCount;
				}

				graphInstance.iteration();
			};

			return {
				startStatsTimer: startStatsTimer
			};
		}());


		// set the video play state to either play or pause, update state of play button
		setPlayState = function () {
				// non auto-play video event occurred - enable interaction with video controls, set pause icon for play button, hide play button overlay
				if (video.paused || video.ended) {
					if (play.classList.contains('control-icon-play')) {
						play.classList.add('control-icon-pause');
						play.classList.remove('control-icon-play');
					}
					if (playButtonOverlay.style.display !== 'none') {
						playButtonOverlay.style.display = 'none';
					}
					video.play();
				} else {
					// pause video - clear any timer for thr fade out of controls, show play icon for play button
					video.pause();
					if (play.classList.contains('control-icon-pause')) {
						play.classList.add('control-icon-play');
						play.classList.remove('control-icon-pause');
					}
					playButtonOverlay.style.display = 'block';
				}
				ControlVisibility.showControls();
				LastUserInteractionTime.setLastInteractionTime();
		};

		// delegate click event captured on page wrapper
		delegateEvent = function (e) {
            // prevents edge browser on microsoft surface from spawning unintended behaviors due to other events
            // in relation to the controls visibility
            if (window.PointerEvent && controlVisibilityTime > 0 && !Utilities.hasTimeIntervalElapsed(controlVisibilityTime,700)) {
                controlVisibilityTime = 0;
                return;
            }
            var target = e.target;
			var targetSelector = target.classList.contains('close') ? 'close' : target;
			if ((e.type === 'touchstart') || (window.PointerEvent && e.type === 'click')) {
                if ((targetSelector === video || targetSelector === wrapper) && controls.classList.contains('fade-out')) {
                    e.preventDefault();
                    ControlVisibility.showControls();
                    LastUserInteractionTime.setLastInteractionTime();
                    return;
                }
                if ((targetSelector === playButtonOverlay || targetSelector === playButtonOverlayIcon) && controls.classList.contains('fade-out')) {
                    e.preventDefault();
                    setPlayState();
                    ControlVisibility.showControls();
                    LastUserInteractionTime.setLastInteractionTime();
                    return;
                }
			}
			if (target !== e.currentTarget && e.type === 'click') {
				// loop through control object and find match to id
				switch (targetSelector) {
					case play:
						setPlayState();
						break;
					case seekbar:
						e.stopPropagation();
						break;
					case playButtonOverlay:
						setPlayState();
						break;
					case playButtonOverlayIcon:
						setPlayState();
						break;
					case quality:
						PanelVisibility.setControlsVisibilityFromPanel();
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.toggleWrapper(touchShield);
						PanelVisibility.toggleWrapper(PanelVisibility.setActivePanel(target));
						break;
					case qualityCurrentDisplay:
						PanelVisibility.setControlsVisibilityFromPanel();
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.toggleWrapper(touchShield);
						PanelVisibility.toggleWrapper(PanelVisibility.setActivePanel(target));
						break;
					case volume:
						PanelVisibility.setControlsVisibilityFromPanel();
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.toggleWrapper(touchShield);
						PanelVisibility.toggleWrapper(PanelVisibility.setActivePanel(target));
						// set initial volume slider size
						VolumeSettings.volumeSliderWidth();
						break;
					case stats:
						PanelVisibility.setControlsVisibilityFromPanel();
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.toggleWrapper(touchShield);
						PanelVisibility.toggleWrapper(PanelVisibility.setActivePanel(target));
						break;
					case fullscreen:
						FullScreenBehavior.toggleFullScreenMode(wrapper);
						Utilities.toggleClassName(fullscreen,'control-icon-fullscreen','control-icon-windowed');
						break;
					case video:
						setPlayState();
						break;
					case touchShield:
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.setTouchShieldEventBehavior(e);
						break;
					case 'close':
						PanelVisibility.setPlayerOverlayButton();
						PanelVisibility.setTouchShieldEventBehavior(e);
						break;
					case muteIconX:
						VolumeSettings.setMute();
						break;
					case muteIcon:
						VolumeSettings.setMute();
						break;
					default:
						e.stopPropagation();
				}
			} else {
				//console.log('CLICKED ON WRAPPER');
			}
		};

		// poll and store video player properties
		initHeartBeat = function () {
			// state variables
			var initialDurationSet, initialVolumeSet, initialSeekbarUpdateSet, initialBitratesStatsSet;
			// functions
			var setInitialDuration, setInitialVolume, setSeekbarTimer, setBitrateTimer, checkVideoState,
				killHeartBeat, syncPlayButton, controlVisibilityCheck,
				checkAdaptingState;
			// heartbeat set interval
			var controlsHeartBeat;

			initialDurationSet = false;
			initialVolumeSet = false;
			initialSeekbarUpdateSet = false;
			initialBitratesStatsSet = false;

			// set the video duration in the player
			setInitialDuration = function () {
				if (initialDurationSet === false && video.readyState > 0) {
					SeekBarBehavior.setDurationTime(dashPlayer.stream.duration);
					initialDurationSet = true;
				}
			};

			// set the initial volume setting
			setInitialVolume = function () {
				if (initialVolumeSet === false && video.readyState > 0 && video.volume !== null ) {
					VolumeSettings.delegateVolumeUI();
					initialVolumeSet = true;
				}
			};

			setSeekbarTimer = function () {
				if (initialSeekbarUpdateSet === false && video.readyState > 0) {
					SeekBarBehavior.startSeekbarTimer();
					initialSeekbarUpdateSet = true;
				}
			};

			setBitrateTimer = function () {
				if (initialBitratesStatsSet === false && dashPlayer && dashPlayer.stream /*&& dashPlayer.stream.videoAdaptationSet*/) {
					QualitySettingsBehavior.startBitrateTimer();
					initialBitratesStatsSet = true;
				}
			};

			syncPlayButton = function () {
				if (video.paused) {
					if (play.classList.contains('control-icon-pause')) {
						play.classList.add('control-icon-play');
						play.classList.remove('control-icon-pause');
					}
				} else {
					if (play.classList.contains('control-icon-play')) {
						play.classList.add('control-icon-pause');
						play.classList.remove('control-icon-play');
					}
					if (playButtonOverlay.style.display !== 'none') {
						playButtonOverlay.style.display = 'none';
					}
				}
			};

			controlVisibilityCheck = function () {
				var timeNow, timeSinceLastUserAction;
				timeNow = Utilities.setNewTime();
				timeSinceLastUserAction = timeNow - LastUserInteractionTime.getLastInteractionTime();

				if (timeSinceLastUserAction >= timingObj.hideControlsThreshold && !mouseOverControls) { // do not check the controls visibility if the mouse is over the controls
					ControlVisibility.checkControlState();
				}
				// set initial last user interaction time
				if (isNaN(timeSinceLastUserAction)) {LastUserInteractionTime.setLastInteractionTime()}
				////////// HACK FOR EDGE SCRUB BAR BUG #2070 /////////////////
				// just hides the controls at the regular interval does not address issue
				// current thinking is code exposed a edge browser input element bug
				// edge will no longer keep controls visible when the mouse is stationary over seekbar
				// like it does in other browsers due to the timing action below
				// it will remain visible for at least 3000 milliseconds
				// TODO: remove hack when can determine exact nature of the problem
				if (Utilities.msEdgeMode() && (timeSinceLastUserAction >= 3000 && timeSinceLastUserAction <= 4000) && trickPlayWrapper.style.display !== 'none') {
					ControlVisibility.checkControlState();
					mouseOverControls = false;
				}
			};

			// make sure the video is still attached to the page, if it isn't kill the heartbeat
			checkVideoState = function () {
				var attached = false;
				var elem = video;
				while (elem) {
					if (elem.nodeName.toUpperCase() == 'HTML') {
						attached = true;
						break;
					}
					elem = elem.parentElement;
				}
				if (!attached) {
					killHeartBeat();
				}
			};

			// kill the heartbeat if video is removed from dom
			killHeartBeat = function () {
				clearInterval(controlsHeartBeat);;
			};


			checkAdaptingState = function() {
				var currentRepIndex = dashPlayer.getCurrentVideoRepresentationIndex();
				var latestRepIndex = dashPlayer.getLatestVideoRepresentationIndex();
				if (currentRepIndex != latestRepIndex) {
					for (var i = 0; i < activeChangingBitrate.length; i++) {
						if (!activeChangingBitrate[i].classList.contains('pulse')) {
							activeChangingBitrate[i].classList.add('pulse');
						}
					}
				} else {
					for (var i = 0; i < activeChangingBitrate.length; i++) {
						if (activeChangingBitrate[i].classList.contains('pulse')) {
							activeChangingBitrate[i].classList.remove('pulse');
						}
					}
				}
			};

			// the heart beat
			controlsHeartBeat = setInterval (
				function() {
					checkVideoState();
					setInitialDuration();
					if (initialVolumeSet === false) {setInitialVolume()}
					setSeekbarTimer();
					setBitrateTimer();
					StatsSettingsBehavior.startStatsTimer();
					syncPlayButton();
					controlVisibilityCheck();
					checkAdaptingState();
				},
				timingObj.heartbeatInterval);
		};

		// initiate the setup and display of the video player controls
		// set most event listeners
		initControls = function (playerWrapperID) {
			playerInstanceSelector = '#' + playerWrapperID;

			// set nodes for this instance
			video = document.querySelector(playerInstanceSelector + ' video');
			controls = document.querySelector(playerInstanceSelector + ' .controls');
			touchShield = document.querySelector(playerInstanceSelector + ' .touch-shield');
			//player = document.querySelector(playerInstanceSelector + ' video');
			playButtonOverlay = document.querySelector(playerInstanceSelector + ' .play-button-overlay');
			playButtonOverlayIcon = document.querySelector(playerInstanceSelector + ' .play-button-overlay div');
			play = document.querySelector(playerInstanceSelector + ' .play');
			quality = document.querySelector(playerInstanceSelector+ ' .quality');
			qualityMenu = document.querySelector(playerInstanceSelector+ ' .quality-menu');
			activeChangingBitrate = document.querySelectorAll('.current');
			qualityDetailsCurrent = document.querySelector(playerInstanceSelector+ ' .quality-details .current');
			qualityDetailsTarget = document.querySelector(playerInstanceSelector+ ' .quality-details .target');
			qualityCurrentDisplay = document.querySelector(playerInstanceSelector+ ' .current-quality-display');
			volume = document.querySelector(playerInstanceSelector + ' .volume');
			muteIconX = document.querySelector(playerInstanceSelector + ' .mute-x');
			muteIcon = document.querySelector(playerInstanceSelector + ' .mute-icon');
			volumeSlider = document.querySelector(playerInstanceSelector + ' .volume-slider');
			volumeDisplay = document.querySelector(playerInstanceSelector + ' .volume-display');
			stats = document.querySelector(playerInstanceSelector + ' .stats');
			fullscreen = document.querySelector(playerInstanceSelector + ' .fullscreen');
			seekbar = document.querySelector(playerInstanceSelector + ' .seekbar');
			durationTime = document.querySelector(playerInstanceSelector + ' .duration-time');
			currentTime = document.querySelector(playerInstanceSelector + ' .current-time');
			trickPlayWrapper = document.querySelector(playerInstanceSelector + ' .trick-play-wrapper');
			trickPlayTimeCode = document.querySelector(playerInstanceSelector + ' .trick-play-time');
			trickPlayContainer = document.querySelector(playerInstanceSelector + ' .trick-play-image-container');
			trickPlaySpinner = document.querySelector(playerInstanceSelector + ' .trick-play-spinner');
			bufferMeter = document.getElementById('bufferMeter');
			adaptDirection = document.getElementById('vidAdaptDirection');
			videoId = document.getElementById('videoId');
			controllerPanels = {
				quality: document.querySelector(playerInstanceSelector + ' .quality-controller'),
				volume: document.querySelector(playerInstanceSelector + ' .volume-controller'),
				stats: document.querySelector(playerInstanceSelector + ' .stats-controller')
			};

			// event listeners
			document.addEventListener('mouseout', MouseVisibility.mouseInTheHouse);
			document.addEventListener('mouseover', MouseVisibility.mouseInTheHouse);
            //wrapper.addEventListener('pointerdown', delegateEvent, false);
			wrapper.addEventListener('click', delegateEvent, false);// DELEGATE CLICK EVENTS BASED ON TARGET GENERATING FROM THE PLAYER WRAPPER
			wrapper.addEventListener('touchstart', delegateEvent, false);// DELEGATE CLICK EVENTS BASED ON TARGET GENERATING FROM THE PLAYER WRAPPER
			wrapper.addEventListener('mousemove', MouseVisibility.setMouseTimeout, false);
			wrapper.addEventListener('touchend', LastUserInteractionTime.setLastInteractionTime, false); // MOBILE
			video.addEventListener('volumechange', VolumeSettings.delegateVolumeUI, false);// VOLUME CHANGE INTERNAL
			touchShield.addEventListener('touchstart', function (e) {e.stopPropagation()}, false); // PREVENT EVENTS ON TOUCH SHIELD FROM FIRING EVENTS ON WRAPPER
			touchShield.addEventListener('touchend', function (e) {e.stopPropagation()}, false); // PREVENT EVENTS ON TOUCH SHIELD FROM FIRING EVENTS ON WRAPPER
			controls.addEventListener('mouseout',ControlVisibility.isMouseOverControls, false);
			controls.addEventListener('mouseup', ControlVisibility.isMouseOverControls, false);
			controls.addEventListener('mouseover', ControlVisibility.isMouseOverControls, false);
			controls.addEventListener('touchend',ControlVisibility.isMouseOverControls, false);
			controls.addEventListener('touchstart',ControlVisibility.isMouseOverControls, false);
/* FUTURE DRAGGABLE IMPLEMENTATION
            if (Utilities.msEdgeMode()) {
                controllerPanels.stats.addEventListener('pointerdown',Utilities.makeDraggable.addDrag, false);
                controllerPanels.quality.addEventListener('pointerdown',Utilities.makeDraggable.addDrag, false);
            }
            else {
                controllerPanels.stats.addEventListener('mousedown',Utilities.makeDraggable.addDrag, false);
                controllerPanels.stats.addEventListener('touchstart',Utilities.makeDraggable.addDrag, false);
                controllerPanels.quality.addEventListener('mousedown',Utilities.makeDraggable.addDrag, false);
                controllerPanels.quality.addEventListener('touchstart',Utilities.makeDraggable.addDrag, false);
            }
*/

			window.addEventListener('blur', function () {
				mouseOverControls = false;
				PanelVisibility.hidePanelOnBlur();
			}, false);
			seekbar.addEventListener('mousedown', function (e) {
                if (window.PointerEvent && controlVisibilityTime > 0 && !Utilities.hasTimeIntervalElapsed(controlVisibilityTime,700)) {
                    return;
                }
				e.stopPropagation();
				SeekBarBehavior.stopSeekbarTimer();
				ControlVisibility.setTouchStartState(e);
			});
			seekbar.addEventListener('mouseout', function (e) {
				 if (window.PointerEvent && controlVisibilityTime > 0 && !Utilities.hasTimeIntervalElapsed(controlVisibilityTime,700)) {
                    return;
                }
				e.stopPropagation();
				TrickPlayBehavior.stopTrickPlay(e);
				MouseVisibility.mouseInTheHouse(e);
			});
			seekbar.addEventListener('mouseup', function (e) {
				if (window.PointerEvent && controlVisibilityTime > 0 && !Utilities.hasTimeIntervalElapsed(controlVisibilityTime,700)) {
					TrickPlayBehavior.stopTrickPlay(e);
                    return;
                }
				SeekBarBehavior.syncCurrentTimeToSeek();
				SeekBarBehavior.startSeekbarTimer();
				ControlVisibility.isMouseOverControls(e);
			});
			seekbar.addEventListener('touchstart', function (e) {
				SeekBarBehavior.stopSeekbarTimer();
				ControlVisibility.setTouchStartState(e);
			});
			seekbar.addEventListener('touchmove', function (e) {
				TrickPlayBehavior.startTrickPlay(e);
				LastUserInteractionTime.setLastInteractionTime();
			});
			seekbar.addEventListener('touchend', function (e) {
				SeekBarBehavior.syncCurrentTimeToSeek();
				SeekBarBehavior.startSeekbarTimer();
				TrickPlayBehavior.stopTrickPlay(e);
			});
			// branch volume setting control for ie11
			if (Utilities.isIE11) {
				seekbar.addEventListener('change', SeekBarBehavior.syncCurrentDisplayTimeToSeek, false); // UPDATE PLAYER TIME TO USER INPUT ON SEEKBAR
				volumeSlider.addEventListener('change', VolumeSettings.delegateVolumeUI, false);// VOLUME CHANGE DUE TO USER INPUT
			} else {
				seekbar.addEventListener('input', SeekBarBehavior.syncCurrentDisplayTimeToSeek, false); // UPDATE PLAYER TIME TO USER INPUT ON SEEKBAR
				volumeSlider.addEventListener('input', VolumeSettings.delegateVolumeUI, false);// VOLUME CHANGE DUE TO USER INPUT
			}
			// (mobile) window resize event listener only triggers when volume setting panel is displayed
			manageResizeEvent = function (node) {
				if (node.classList.contains('show')) {
					window.addEventListener('resize', VolumeSettings.volumeSliderWidth, false);
				} else {
					window.removeEventListener('resize', VolumeSettings.volumeSliderWidth, false);
				}
			};

			// hide default video controls
			// prevents bugs and strange behavior associated with not having
			// the control attribute initially set on the video element in certain browsers
			video.controls = false;

			// kick off the video player heartbeat
			initHeartBeat();
			videoId.innerHTML = thisMovieId;
		};

		// init function call //////////////////////////////////////////////////////////////////////////////////////////
		// append html to video player wrapper and give the wrapper a unique id.
		// this allows for multiple players on the page (in theory)
		(function (wrapperNode, markup, thisPlayerWrapperId, movieId) {
			thisMovieId = movieId;
			if(typeof markup == 'undefined' && !markup) {  // no html template for the player controls
				return;
			}
			if(!wrapperNode) {
				wrapperNode = document.createElement('div');
				wrapperNode.setAttribute('id', 'player');
				document.body.appendChild(wrapperNode);
			}

			// append the html markup (player and controls) to the player wrapper
			wrapperNode.innerHTML = markup;
			// set this wrapper node reference to the wrapper variable used throughout this file
			wrapper = wrapperNode;
			// set the instance id of this player wrapper
			playerInstanceId = thisPlayerWrapperId;
			// initialize the player controls
			initControls(playerInstanceId);
		}(playerWrapper, playerHTML, embedId, currentMovieId));

	return {
		playerInstanceId: playerInstanceId,
		controlsEndOfStreamCallback: ControlVisibility.setEndVideoState
	}
};