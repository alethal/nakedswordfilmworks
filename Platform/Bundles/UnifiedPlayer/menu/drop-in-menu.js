/*
 *	drop-in-menu.js - rds 201504ish
 *
 *	A self-contained dynamic menu system that you can place anywhere.
 *	It will set cookies on menu selection.

 *	Notes and TODO list appended to this file.
 *
 */

var dropInMenu = function(dropInMenu_config) {
	var dropInMenu = this;
	var dim = this;
	var log = dim.log = { };
	var cookieDurationDefault = 3650;

	log.call = function(str, a, b, c, d, e, f) {
//		return;
		if(0) {
			if(arguments.length == 1)  // hacky hacky
				console.log(str);
			else if(arguments.length == 2)
				console.log(str, a);
			else if(arguments.length == 3)
				console.log(str, a, b);
			else if(arguments.length == 4)
				console.log(str, a, b, c);
			else if(arguments.length == 5)
				console.log(str, a, b, c, d);
			else if(arguments.length == 6)
				console.log(str, a, b, c, d, e);
			else if(arguments.length == 7)
				console.log(str, a, b, c, d, e, f);
			else if(arguments.length >= 8)  // or if no arguments, just fall through
				console.log(str, a, b, c, d, e, f, g);
		}
		var xmlhttp = new XMLHttpRequest();
		if(typeof(a) != 'undefined')
			str += '; ' + JSON.stringify(a);
		if(typeof(b) != 'undefined')
			str += '; ' + JSON.stringify(b);
		if(typeof(c) != 'undefined')
			str += '; ' + JSON.stringify(c);
		if(typeof(d) != 'undefined')
			str += '; ' + JSON.stringify(d);
		if(typeof(e) != 'undefined')
			str += '; ' + JSON.stringify(e);
		if(typeof(f) != 'undefined')
			str += '; ' + JSON.stringify(f);
		data = JSON.stringify(str);
		xmlhttp.open("GET",'http://??????????LOG LOCATION???????????????data=' + data, true);
		xmlhttp.send();
	};
	log.debug = function(type, message) {
		if(typeof message == 'undefined') {
			message = type;
			type = 0;
		}
		if(typeof dim.debug != 'undefined' && (dim.debug === type || dim.debug === '*'))
//			console.log('DIM' + (type?' ' + type:'') + ': ' + message);
			log.call('DIM' + (type?' ' + type:'') + ': ' + message);
	};

	dim.status = 'loading';		// set across various states until 'attached (ready)'
	dim.loaded = false;		// set true at the end of this object definition
	dim.initialized = false;	// set true after .initialize() function call at end of object definition
	dim.attached = false;		// set true when external script has successfully called .attach()
	dim.destroyed = false;		// this will be true shortly before it no longer exists

	dim.menu = { };
	dim.menu.config = { };

	var i = 1;
	while(get('#drop-in-menu-instance-' + i, 1))  // generate unique instance ID
		i++;
	dim.id = 'drop-in-menu-instance-' + i;  // all further references via classname/id using get() or gather() will be prefaced by this hopefully-to-remain-unique ID

	dim.initialize = function() {  // this will be called at the end of the object load
		dim.status = 'initializing';

		dim.debug = getURLParameter('debug');

		if(typeof dropInMenu_config == 'object')
			dim.menu.config = dropInMenu_config;

		addEventListener(window, 'mousemove', dim.window.onMousemove);
		addEventListener(window, 'mousedown', dim.window.onMousedown);
		addEventListener(window, 'mouseup', dim.window.onMouseup);
		addEventListener(window, 'touchstart', dim.window.onTouchstart);
		addEventListener(window, 'touchend', dim.window.onTouchend);
		addEventListener(window, 'touchcancel', dim.window.onTouchcancel);

		dim.initialized = true;
		dim.status = 'initialized';
	};

	dim.attach = function(targetElement, targetParent, targetContainer) {
		dim.status = 'attaching';
		if(!targetParent)
			targetParent = document.body;
		if(!targetElement) {
			// wrapper
			targetElement = document.createElement('div');
			targetElement.controls = dim;
			targetElement.className = 'aebn_drop_in_menu drop-in-menu-container no-select';
			//targetElement.className = 'drop-in-menu-container no-select';
			targetElement.id = 'drop-in-menu-anchor';
			targetParent.appendChild(targetElement);
			targetParent = targetElement;
			dim.container = { element: targetElement };
			// icon
			targetElement = document.createElement('div');
			targetElement.className = 'drop-in-menu-icon no-select';
			targetElement = document.createElement('div');
			targetElement.className = 'aebn_page_settings control-icon-settings';
			targetParent.appendChild(targetElement);
		}
		else {
			dim.container = { element: targetElement.parentElement };
		}
		dim.icon = { element: targetElement };
		targetElement.style.cursor = 'pointer';
		if(typeof dim.menu.config.title != 'undefined')
			dim.icon.element.title = dim.menu.config.title;
		if(typeof dim.container != 'undefined' && typeof dim.container.element != 'undefined') {
			addEventListener(dim.container.element, 'mousedown', dim.menu.onMousedown);
			addEventListener(dim.container.element, 'mouseup', dim.menu.onMouseup);
			addEventListener(dim.container.element, 'click', dim.menu.toggle);
//			addEventListener(dim.container.element, 'touchend', dim.menu.toggle);  // this is causing double-opening on stock android browser
		}
		dim.button = { element: targetElement };
		dim.menu.container = { element: document.createElement('div') };
		document.body.appendChild(dim.menu.container.element);
		dim.menu.container.element.style.position = 'absolute';
		if(typeof dim.container != 'undefined' && typeof dim.container.element != 'undefined')
			dim.container.element.id = dim.id;
		dim.menu.container.element.id = dim.id;

		if(targetContainer)
			dim.menu.container.target = { element: targetContainer };

		dim.addMenus(dim.menu.config);
		dim.menu.element = get('#drop-in-menu-0');
		addClass('hide', dim.menu.element);

		dim.runAttachments();

		dim.attached = true;
		dim.status = 'attached (ready)';
	};

	dim.addAttachment = function(attachment_function) {
		if(attachment_function) {
			if(typeof dim.attachments == 'undefined')
				dim.attachments = [ ];
			dim.attachments.push(attachment_function);
		}
	};

	dim.runAttachments = function() {
		if(typeof dim.attachments != undefined)
			for(attach_function in dim.attachments)
				dim.attachments[attach_function]();
	};

	dim.destroy = function() {
		dim.destroyed = true;  // sure, why not
		dim.status = 'destroyed';

		removeEventListeners();  // remove all that were added through the internal system

		dim.intervals.clear();
		dim.timeouts.clear();

		dim.destroyMenus();

		if(dim.container.element)
			delete dim.container.element;
		if(dim.menu.container.element)
			delete dim.menu.container.element;

		dim.destroy = undefined;
		dim = undefined;  // it's up to our Destructor (Gozer) to actually destroy us
	};

// CONTROLS ///////////////////////////////////////////////////////////////////

	dim.touchAble = function() {
		if(!dim.isTouchAble) {
			addClass('touch', [ dim.container.element, dim.menu.container.element ]);
			dim.isTouchAble = 1;
		}
	};

// SYSTEM HOOKS ///////////////////////////////////////////////////////////////

	dim.window = { };

	dim.window.onMousedown = function(event) {
		if(dim.menu.opened() && !dim.isMenuTarget(event) && !dim.isIconTarget(event))
			dim.menu.close();
	};

	dim.window.onMouseup = function(event) {
		if(dim.menu.dragging)
			return dim.menu.onMouseup(event);
	};

	dim.window.onMousemove = function(event) {
		if(dim.menu.dragging)
			return dim.menu.onMousemove(event);
	}

	dim.window.onTouchend = function(event) {
		dim.touchAble();
		return dim.window.onMouseup(event);
	};

	dim.window.onTouchstart = function(event) {
		dim.touchAble();
		return dim.window.onMousedown(event);
	};

	dim.window.onTouchcancel = function(event) {
		dim.touchAble();
		return dim.window.onMouseup(event);
	};

	dim.isMenuTarget = function(event, target) {
		if(!target && event && event.target)
			target = event.target;
		if(target) {
			if(typeof dim.menu.container != 'undefined' && typeof dim.menu.container.element != 'undefined' && target == dim.menu.container.element)
				return true;
			if(target.parentElement)
				return dim.isMenuTarget(0, target.parentElement);
		}
		return false;
	};

	dim.isIconTarget = function(event, target) {
		if(!target && event && event.target)
			target = event.target;
		if(target) {
			if(typeof dim.container != 'undefined' && typeof dim.container.element != 'undefined' && target == dim.container.element)
				return true;
			if(target.parentElement)
				return dim.isIconTarget(0, target.parentElement);
		}
		return false;
	};

	dim.window.resizeHandler = function(event) {
		if(typeof dim == 'undefined' || typeof dim.menu == 'undefined')
			return;
		if(dim && dim.menu.opened())
			dim.menu.close();
		if(dim.window.resizeTimeout)
			clearTimeout(dim.window.resizeTimeout);
		dim.window.resizeTimeout = setTimeout(dim.window.resized, 100);
	};

	dim.window.resized = function() {  // done resizing, maybe
		dim.window.resizeTimeout = 0;
	}

	dim.addAttachment(function() {
		window.addEventListener('resize', dim.window.resizeHandler);
	});

// TOOLTIPS ////////////////////////////////////////////////////////////////////

	dim.controls = { };
	dim.controls.buttons = { onMouseout_timeout: null };
	dim.controls.tooltip = { };

	dim.addAttachment(function() {
		dim.controls.tooltip.element = document.createElement('div');
		dim.menu.container.element.appendChild(dim.controls.tooltip.element);
		dim.controls.tooltip.element.innerHTML = '\
<div class="drop-in-menu-tooltip hide">\
	<div class="drop-in-menu-tooltip-body">\
		<div class="drop-in-menu-text-tooltip">&nbsp;</div>\
	</div>\
	<div class="drop-in-menu-tooltip-arrow"></div>\
</div>\
';
		dim.controls.tooltip.text = { element: get('.drop-in-menu-tooltip-text') };
	});

	dim.addAttachment(function() {  // This will automatically attach mouseovers and mouseouts to all elements containing a 'tooltip' attribute.
		dim.controls.tooltip.element = get('.drop-in-menu-tooltip');
		dim.controls.tooltip.arrow = { element: get('.drop-in-menu-tooltip-arrow') };
		dim.controls.tooltip.text = { element: get('.drop-in-menu-text-tooltip') };
		dim.controls.buttons.elements = document.querySelectorAll('[dim-tooltip]');
	});

	dim.controls.buttons.onMouseover = function(event) {
		if(dim.controls.buttons.onMouseout_timeout) {
			clearTimeout(dim.controls.buttons.onMouseout_timeout);
			dim.controls.buttons.onMouseout_timeout = 0;
		}
		if(dim.controls.buttons.onMouseover_timeout)
			clearTimeout(dim.controls.buttons.onMouseover_timeout);
		dim.controls.buttons.onMouseover_timeout = setTimeout(function() { dim.controls.buttons.onMouseover_delayed(event); }, 300);
	};

	dim.controls.buttons.onMouseover_delayed = function(event) {
		var element = 0;
		if(event.toElement)
			element = event.toElement;
		while(element && !element.getAttribute('dim-tooltip') && element.parentElement)
			element = element.parentElement;
		if(element && element.getAttribute('dim-tooltip')) {
			//commenting out for now tooltip functionality
			//dim.controls.tooltip.open(element);
		}
	};

	dim.controls.buttons.onMouseout = function(event) {
		if(dim.controls.buttons.onMouseover_timeout) {
			clearTimeout(dim.controls.buttons.onMouseover_timeout);
			dim.controls.buttons.onMouseover_timeout = 0;
		}
		if(dim.controls.buttons.onMouseout_timeout)
			clearTimeout(dim.controls.buttons.onMouseout_timeout);
		dim.controls.buttons.onMouseout_timeout = setTimeout(function() { dim.controls.buttons.onMouseout_delayed(event); }, 50);
	};

	dim.controls.buttons.onMouseout_delayed = function(event) {
		dim.controls.buttons.onMouseout_timeout = 0;
		var element = 0;
		if(event.target)
			element = event.target;
		while(element && element.getAttribute('dim-tooltip') !== dim.controls.tooltip.hoveredOver && element.parentElement)
			element = element.parentElement;
		if(element) {
			//commenting out for now tooltip functionality
			//dim.controls.tooltip.close();
			};
	};

	dim.controls.tooltip.open = function(element, tip) {
		dim.controls.tooltip.text.element.innerHTML = tip?tip:element.getAttribute('dim-tooltip');
		show(dim.controls.tooltip.element);
		var rect = 0;
		var i = 0;
		var fontSize = parseFloat(window.getComputedStyle(dim.controls.tooltip.text.element).getPropertyValue('font-size'));
		do {  // dynamically shrink tooltip text font size until tooltip fits on screen
			dim.controls.tooltip.text.element.style.fontSize = fontSize + 'px';
			rect = dim.controls.tooltip.element.getBoundingClientRect();
		}
		while (rect.width > window.innerWidth && fontSize-- > 3);
		var element_rect = element.getBoundingClientRect();
		var container_rect = dim.menu.container.element.getBoundingClientRect();  // no mobile tooltips
		dim.controls.tooltip.element.style.top = '0';
		tooltip_rect = dim.controls.tooltip.element.getBoundingClientRect();

		var tooltipLeft = element_rect.left;
		tooltipLeft -= tooltip_rect.width / 2;  // minus half the tooltip
		tooltipLeft += element_rect.width / 2;  // plus half the element
		tooltipLeft -= dim.menu.container.element.getBoundingClientRect().left;

		var boundaries = { left: -container_rect.left, right: document.body.getBoundingClientRect().width - container_rect.left };
		if(tooltipLeft < boundaries.left)
			tooltipLeft = boundaries.left;
		if(tooltipLeft + tooltip_rect.width > boundaries.right)
			tooltipLeft = boundaries.right - tooltip_rect.width;

		dim.controls.tooltip.element.style.left = tooltipLeft + 'px';
		// var tooltipTop = element_rect.top - tooltip_rect.top;
		var tooltipTop = element_rect.top;
		tooltipTop -= tooltip_rect.height;
		dim.controls.tooltip.element.style.top = tooltipTop + 'px';

		dim.controls.tooltip.hoveredOver = element.getAttribute('dim-tooltip');
	};

	/**
	 * @function closeTooltip
	 * @summary closes any opened tooltips
	 * @description closeTooltip() will close any opened tooltips.
	 */

	dim.controls.tooltip.close = function(includeTouch) {
		if(dim.controls.tooltip.element)
			hide(dim.controls.tooltip.element);
		dim.controls.tooltip.hoveredOver = 0;
	};


// MENU ITEMS /////////////////////////////////////////////////////////////////

	dim.addMenus = function(menu) {
		if(typeof dim.menus == 'undefined')
			dim.menus = { length: 0, shown: [ ] };
		var menuCounter = dim.menus.length++;
		dim.menus[menuCounter] = { menu: menu };
		menu.id = menuCounter;
		if(menu.items) {
			var menu_html = '<div id="drop-in-menu-' + menuCounter + '" class="drop-in-menu no-select hide" menu="' + menuCounter + '">';
			for(var submenu = 0; submenu < menu.items.length; submenu++) {
				var item = menu.items[submenu];
				var arrowClass = ' invis';
				if(typeof item.items != 'undefined' && item.items && item.items.length)
					arrowClass = '';
				menu_html += '<div id="drop-in-menu-item-' + menuCounter + '-' + submenu + '" class="drop-in-menu-item"' + (item.description?' dim-tooltip="' + item.description + '"':'') + '><div class="pull-left drop-in-menu-item-arrow drop-in-menu-item-arrow-left' + arrowClass + '"></div><div class="pull-right drop-in-menu-item-arrow drop-in-menu-item-arrow-right' + arrowClass + '"></div><div class="drop-in-menu-item-label">' + (item.html?item.html:item.name) + '</div><div class="clear"></div></div>';
			}
			menu_html += '</div>';
			var menuElement = document.createElement('div');
			menuElement.className = 'aebn_drop_in_menu drop-in-submenu';
			//menuElement.className = 'drop-in-submenu';
			menuElement.id = 'drop-in-menu-' + menuCounter + '-container';
			menuElement.innerHTML = menu_html;
			menuElement.setAttribute('menu', menuCounter);
			dim.menu.container.element.appendChild(menuElement);
			dim.menus[menuCounter].id = menuCounter;
			dim.menus[menuCounter].container = { element: menuElement };
			dim.menus[menuCounter].element = get('#drop-in-menu-' + menuCounter);
			for(var submenu = 0; submenu < menu.items.length; submenu++) {
				var elm = 0;
				var subelm = 0;
				if(elm = get('#drop-in-menu-item-' + menuCounter + '-' + submenu)) {
					elm.setAttribute('menu', menuCounter);
					elm.setAttribute('menu-item', menuCounter + '-' + submenu);
					addEventListener(elm, 'mousedown', dim.menu.item.onMousedown);
					addEventListener(elm, 'mouseover', dim.menu.item.onMouseover);
					addEventListener(elm, 'mouseout', dim.menu.item.onMouseout);
					if(subelm = get('#drop-in-menu-item-' + menuCounter + '-' + submenu + ' .drop-in-menu-item-arrow')) {
						addEventListener(subelm, 'mousedown', dim.menu.item.onMousedown);
						addEventListener(subelm, 'mouseover', dim.menu.item.onMouseover);
						addEventListener(subelm, 'mouseout', dim.menu.item.onMouseout);
					}
					if(subelm = get('#drop-in-menu-item-' + menuCounter + '-' + submenu + ' .drop-in-menu-item-label')) {
						addEventListener(subelm, 'mousedown', dim.menu.item.onMousedown);
						addEventListener(subelm, 'mouseover', dim.menu.item.onMouseover);
						addEventListener(subelm, 'mouseout', dim.menu.item.onMouseout);
					}
				}
			}
			for(var submenu = 0; submenu < menu.items.length; submenu++)
				if(typeof menu.items[submenu].items != 'undefined' && menu.items[submenu].items && menu.items[submenu].items.length) {
					var childmenu;
					if(childmenu = dim.addMenus(menu.items[submenu]))
						if(elm = get('#drop-in-menu-item-' + menuCounter + '-' + submenu)) {
							elm.setAttribute('child-menu', childmenu);
							if(dim.menus[childmenu].element)
								for(var chelm = dim.menus[childmenu].element.firstChild; chelm; chelm = chelm.nextSibling)
									chelm.setAttribute('parent-menu', menuCounter + '-' + submenu);
						}
				}
		}
		return(menuCounter);
	};

	dim.destroyMenus = function() {
		for(var i = 0; i < dim.menus.length; i++)
			if(dim.menus[i].element) {
				dim.menus[i].container.element.parentNode.removeChild(dim.menus[i].container.element);
				dim.menus[i].element.parentNode.removeChild(dim.menus[i].element);
			}
		dim.menus = { length: 0 };
	};

	dim.menu.open = function(event) {
		//console.log('dim.menu.open')
		if(dim.menu.item.menuCrumbs.length)
			for(var i = 0; i < dim.menu.item.menuCrumbs.length; i++)
				removeClass('followed', dim.menu.item.menuCrumbs[i]);
		dim.menu.item.menuCrumbs = [ ];
		dim.menus.lastPositioned = 0;
		removeClass('hide', dim.menus[0].element);
		addClass('select', dim.icon.element);

		positionElement(dim.menus[0].element, (typeof dim.menu.container.target != 'undefined' && typeof dim.menu.container.target.element != 'undefined' && dim.menu.container.target.element)?dim.menu.container.target.element:
(typeof dim.button.element != 'undefined'?dim.button.element:0), typeof dim.menu.container != 'undefined' && typeof dim.menu.container.target != 'undefined' && typeof dim.menu.container.target.element != 'undefined' && dim.menu.container.target.element?[ 'center' ]:0);
		dim.menu.item.adjustArrows(dim.menus[0].element);
	};

	dim.menu.opened = function() {
		return hasClass('hide', dim.menu.element)?false:true;
	};

	dim.menu.close = function(event) {
		addClass('hide', dim.menu.element);
		removeClass('select', dim.icon.element);
		dim.menu.item.closeAll();
		//commenting out for now tooltip functionality
		//dim.controls.tooltip.close();
		dim.menus.lastPositioned = 0;
	};

	dim.menu.toggle = function(event) {
		//console.log('toggle');
		if(dim.menu.wasDragging) {
			dim.menu.wasDragging = false;
			return;
		}
		if(!dim.menu.opened())
			dim.menu.open(event);
		else dim.menu.close(event);
		pauseEvent(event);
	};

	dim.menu.onMousedown = function(event) {
		if(event && event.shiftKey && event.ctrlKey) {
			dim.menu.dragging = true;
			addClass('dragging', dim.icon.element);
			pauseEvent(event);
		}
	};

	dim.menu.onMouseup = function(event) {
		if(dim.menu.dragging) {
			dim.menu.dragging = false;
			dim.menu.wasDragging = true;
			dim.menu.dragging_x = dim.menu.dragging_start_x = undefined;
			dim.menu.dragging_y = dim.menu.dragging_start_y = undefined;
			removeClass('dragging', dim.icon.element);
			pauseEvent(event);
			if(dim.menu.opened())
				dim.menu.open(event);  // this will reposition
		}
	};

	dim.menu.onMousemove = function(event) {
		if(dim.menu.dragging) {
			if(typeof dim.menu.dragging_start_x == 'undefined') {
				dim.menu.dragging_start_x = dim.menu.dragging_x = event.clientX;
				dim.menu.dragging_start_y = dim.menu.dragging_y = event.clientY;
			}
			if(event.clientX != dim.menu.dragging_x || event.clientY != dim.menu.dragging_y) {
				var differenceX = event.clientX - dim.menu.dragging_x;
				if(differenceX) {
					var newLeft = parseFloat(dim.icon.element.style.left);
					if(isNaN(newLeft))
						newLeft = 0;
					newLeft += differenceX;
					dim.icon.element.style.left = newLeft + 'px';
				}
				var differenceY = event.clientY - dim.menu.dragging_y;
				if(differenceY) {
					var newTop = parseFloat(dim.icon.element.style.top);
					if(isNaN(newTop))
						newTop = 0;
					newTop += differenceY;
					dim.icon.element.style.top = newTop + 'px';
				}
				dim.menu.dragging_x = event.clientX;
				dim.menu.dragging_y = event.clientY;
			}
		}
	};

/* submenus */

	dim.menu.item = { mousedOver: 0 };

	dim.menu.item.onTouchstart = function(event) {
	};

	dim.menu.item.onTouchend = function(event) {
	};

	dim.menu.item.onMousedown = function(event) {
		var target = event.target;
		while(target && !target.getAttribute('menu'))
			target = target.parentElement;
		var menu_item = target.getAttribute('menu-item');
		var menus = menu_item.split('-');
		if(dim.menu.item.mousedOver === target && dim.isTouchAble) {  // touch can get hover state confused if rotated (close menus); correct that state
			var childmenu = target.getAttribute('child-menu');
			if(childmenu != null) {
				var submenu = get('#drop-in-menu-' + childmenu);
				if(submenu && !shown(submenu)) {
					dim.menu.item.mousedOver = 0;
					dim.menu.item.onMouseover(event);
					return;
				}
			}
		}
		if(menus.length == 2) {
			if(typeof dim.menus[parseInt(menus[0])] != 'undefined') {
				menu_item = dim.menus[parseInt(menus[0])];
				if(typeof menu_item.menu != 'undefined' && typeof menu_item.menu.items != 'undefined') {
					var closing = 0;
					menu_item = menu_item.menu.items[parseInt(menus[1])];
					var parent = target.getAttribute('parent-menu');
					if(parent) {
						parent = parent.split('-');
						var menus = dim.menus;
						for(var i = 0; i < parent.length; i++) {
							parent[i] = parseInt(parent[i]);
							if(!i) {
								if(typeof menus[parent[i]] != 'undefined')
									menus = menus[parent[i]];
							}
							else if(typeof menus.menu != 'undefined' && typeof menus.menu.items != 'undefined' && typeof menus.menu.items[parent[i]] != 'undefined')
								menus = menus.menu.items[parent[i]];
						}
						parent = menus;
					}
					if(parent && typeof parent.cookie != 'undefined' && parent.cookie) {
							if(typeof menu_item.value != 'undefined') {  // could be null or 0
								dim.setCookie(parent.cookie, menu_item.value, typeof parent.cookieDuration != 'undefined' && parseInt(parent.cookieDuration) ? parseInt(parent.cookieDuration) : cookieDurationDefault);
								if(dim.isTouchAble || window.PointerEvent) {
									var menuElement = event.target;
									while(menuElement && !hasClass('drop-in-menu-item', menuElement))
										menuElement = menuElement.parentElement;
									if(menuElement) {
										addClass('selected', menuElement);
										setTimeout(function() {
											if(menuElement)
												removeClass('selected', menuElement);
											dim.menu.close();
										}, 200);
										closing = 1;
									}
									else closing = -1;
								}
								else closing = -1;
							}
					}
					if(typeof menu_item.onselect != 'undefined') {
						menu_item.onselect(dim);
						if(dim.isTouchAble || window.PointerEvent) {
							var menuElement = event.target;
							while(menuElement && !hasClass('drop-in-menu-item', menuElement))
								menuElement = menuElement.parentElement;
							if(menuElement) {
								addClass('selected', menuElement);
								setTimeout(function() {
									if(menuElement)
										removeClass('selected', menuElement);
									dim.menu.close();
								}, 200);
								closing = 1;
							}
							else closing = -1;
						}
						else closing = -1;
					}
					if(closing === -1)
						dim.menu.close();
				}
			}
		}
		pauseEvent(event);
	};

	dim.menu.item.menuCrumbs = [ ];
	dim.menu.item.mouseover_timeouts = { };

	dim.menu.item.onMouseover = function(event) {
		var debug = 0;
		var target = event.target;
		while(target && !target.getAttribute('menu'))
			target = target.parentElement;
			if(typeof dim.menu.item.mouseover_timeouts[target.id] != 'undefined' && dim.menu.item.mouseover_timeouts[target.id]) {
				clearTimeout(dim.menu.item.mouseover_timeouts[target.id]);
				dim.menu.item.mouseover_timeouts[target.id] = 0;
			}
		if(target && dim.menu.item.mousedOver != target) {
			dim.menu.item.mousedOver = target;
			var menu = target.getAttribute('menu');
			var submenu = target.getAttribute('submenu');
			var childmenu = target.getAttribute('child-menu');
			if(childmenu != null) {
				if(submenu = get('#drop-in-menu-' + childmenu)) {
					show(submenu);
					var newCrumbs = [ target ];
					for(var i = 0; i < dim.menu.item.menuCrumbs.length; i++) {
						if(debug)
							//console.log('adding breadcrumb to', target, 'comparing to', dim.menu.item.menuCrumbs[i]);
						if(target.getAttribute('menu') === dim.menu.item.menuCrumbs[i].getAttribute('menu'))
							removeClass('followed', dim.menu.item.menuCrumbs[i]);
						else newCrumbs.push(dim.menu.item.menuCrumbs[i]);
					}
					addClass('followed', target);
					dim.menu.item.menuCrumbs = newCrumbs;
					submenuIndex = submenu.getAttribute('menu');
					var openingMenu = dim.menus[submenuIndex];
					if(typeof openingMenu.menu != 'undefined') {
						var openMenu = openingMenu.menu;
						if(typeof openMenu.presetDefault != 'undefined' && openMenu.presetDefault && typeof openMenu.items != 'undefined' && typeof openMenu.cookie != 'undefined' && !dim.getCookie(openMenu.cookie)) {
							for(var i = 0; i < openMenu.items.length; i++) {
								if(typeof openMenu.items[i]['default'] != 'undefined' && openMenu.items[i]['default']) {
									dim.setCookie(openMenu.cookie, openMenu.items[i].value);
									addClass('selected', get('#drop-in-menu-item-' + submenuIndex + '-' + i));
								}
								else removeClass('selected', get('#drop-in-menu-item-' + submenuIndex + '-' + i));
							}
						}
						if(typeof openMenu.preselectFromCookie != 'undefined' && openMenu.preselectFromCookie && typeof openMenu.items != 'undefined') {
							var setCookie = dim.getCookie(openMenu.cookie);
							for(var i = 0; i < openMenu.items.length; i++) {
								if(setCookie === openMenu.items[i].value || setCookie === openMenu.items[i].value + '' || !setCookie && !openMenu.items[i].value)
									addClass('selected', get('#drop-in-menu-item-' + submenuIndex + '-' + i));
								else removeClass('selected', get('#drop-in-menu-item-' + submenuIndex + '-' + i));
							}
						}
					}
					dim.menus.shown.push({ parent: target, child: submenu });
//dim.log.call('item.onMouseover() position');
//					dim.menus.lastPositioned = positionElement(submenu, target, dim.menus.lastPositioned === 'left'?[ 'left', 'right' ]:[ 'right', 'left' ]);  // prefer the last used position - i.e. continue opening in the same direction
					dim.menus.lastPositioned = positionElement(submenu, target, [ 'right', 'left' ]);  // prefer the last used position - i.e. continue opening in the same direction
					dim.menu.item.adjustArrows(submenu);
					var new_shown = [ ];
					for(var i = 0; i < dim.menus.shown.length; i++)
						if(dim.menus.shown[i].parent != target && dim.menus.shown[i].parent.getAttribute('menu') == target.getAttribute('menu'))
							addClass('hide', dim.menus.shown[i].child);
						else new_shown.push(dim.menus.shown[i]);
					dim.menus.shown = new_shown;
				}
			}
			dim.menu.item.mousedOver = target;
			var tooltip = target.getAttribute('dim-tooltip');
			if(hasClass('selected', target))
				tooltip = (tooltip?tooltip + ' ':'') + '[selected]';
			if(tooltip) {
				//commenting out for now tooltip functionality
				//dim.controls.tooltip.open(get('#drop-in-menu-' + target.getAttribute('menu')), tooltip);
			} else {
				//commenting out for now tooltip functionality
				//dim.controls.tooltip.close();
			}
			pauseEvent(event);
		}
	};

	dim.menu.item.onMouseout = function(event) {
		var debug = 0;
		var target = event.target;
		while(target && !target.getAttribute('menu'))
			target = target.parentElement;
		if(target) {
			if(typeof dim.menu.item.mouseover_timeouts[target.id] != 'undefined' && dim.menu.item.mouseover_timeouts[target.id])
				clearTimeout(dim.menu.item.mouseover_timeouts[target.id]);
			dim.menu.item.mouseover_timeouts[target.id] = setTimeout(function() { dim.menu.item.onMouseout_delayed(event); }, 100);
			pauseEvent(event);
		}
	};

	dim.menu.item.onMouseout_delayed = function(event) {
		var debug = 0;
		var target = event.target;
		while(target && !target.getAttribute('menu'))
			target = target.parentElement;
		if(target && typeof dim.menu.item.mouseover_timeouts[target.id] != 'undefined' && dim.menu.item.mouseover_timeouts[target.id])
				clearTimeout(dim.menu.item.mouseover_timeouts[target.id]);
		if(dim.menu.item.mousedOver) {
			if(dim.menu.item.mousedOver.getAttribute('menu') && target.getAttribute('child-menu') && dim.menu.item.mousedOver.getAttribute('menu') === target.getAttribute('child-menu'))
				return;
			if(dim.menu.item.mousedOver.getAttribute('child-menu') && target.getAttribute('menu') && dim.menu.item.mousedOver.getAttribute('child-menu') === target.getAttribute('menu'))
				return;
		}
		if(window.PointerEvent)  // IE metro, really weird method of pointer events - keeps sending mouseouts when touch ends
			return;
		var new_shown = [ ];
		for(var i = 0; i < dim.menus.shown.length; i++)
			if(dim.menus.shown[i].parent == target) {
//dim.log.call('hiding ' + (dim.menus.shown[i].child.name?dim.menus.shown[i].child.name:dim.menus.shown[i].child.title));
				addClass('hide', dim.menus.shown[i].child);
				var newCrumbs = [ ];
				for(var j = 0; j < dim.menu.item.menuCrumbs.length; j++)
					if(dim.menus.shown[i].child.getAttribute('menu') === dim.menu.item.menuCrumbs[j].getAttribute('child-menu'))
						removeClass('followed', dim.menu.item.menuCrumbs[j]);
					else newCrumbs.push(dim.menu.item.menuCrumbs[j]);
				dim.menu.item.menuCrumbs = newCrumbs;
			}
			else new_shown.push(dim.menus.shown[i]);
			dim.menus.shown = new_shown;
			if(dim.menu.item.mousedOver == target) {
				//commenting out for now tooltip functionality
				//dim.controls.tooltip.close();
				dim.menu.item.mousedOver = 0;
			}
	};

	dim.menu.item.closeAll = function(event) {
		for(var i = 0; i < dim.menus.shown.length; i++)
			hide(dim.menus.shown[i].child);
		dim.menus.shown = [ ];
	};

	dim.menu.item.adjustArrows = function(element) {
//return;
		var menu = parseInt(element.getAttribute('menu'));
		var menuItems = dim.menus[menu].menu.items;
		for(var i = 0; i < menuItems.length; i++) {
			var menuItem = menuItems[i];
			var menuElement = get('#drop-in-menu-item-' + menu + '-' + i);
			for(var j in dim.menus) {
				var entry = dim.menus[j];
				if(entry && typeof entry.menu != 'undefined' && typeof entry.menu.name != 'undefined' && typeof menuItem.name != 'undefined' && entry.menu.name === menuItem.name) {
//					var predictedPosition = positionElement(entry.element, menuElement, dim.menus.lastPositioned === 'left'?[ 'left', 'right' ]:[ 'right', 'left' ]);
					var predictedPosition = positionElement(entry.element, menuElement, [ 'right', 'left' ]);
//dim.log.call('predictedPosition is ' + predictedPosition + ' for entry ' + entry.menu.name);
//console.log('predictedPosition is ' + predictedPosition + ' for:', entry.element, menuElement);
					if(predictedPosition === 'left')
						vis(get('#drop-in-menu-item-' + menu + '-' + i + ' .drop-in-menu-item-arrow-left'))
					else invis(get('#drop-in-menu-item-' + menu + '-' + i + ' .drop-in-menu-item-arrow-left'));
					if(predictedPosition === 'right')
						vis(get('#drop-in-menu-item-' + menu + '-' + i + ' .drop-in-menu-item-arrow-right'))
					else invis(get('#drop-in-menu-item-' + menu + '-' + i + ' .drop-in-menu-item-arrow-right'));
					break;
				}
			}
		}
	};


// SUPPORT ////////////////////////////////////////////////////////////////////

/* interval/timeout system *********************
 *
 * all intervals and timeouts threaded through this system
 *
 ***********************************************/

	dim.intervals = { ids: [] };
	dim.timeouts = { ids: [] };

	dim.intervals.clear = function(id) {
		for(var i in dim.intervals.ids)
			if(id == dim.interval.ids[i] || id === undefined)
				window.clearTimeout(dim.interval.ids[i]);
	};

	dim.intervals.set = function(code, delay) {
		var interval = window.setInterval(code, delay);
		dim.intervals.ids.push(interval);
		return interval;
	};

	dim.timeouts.clear = function(id) {
		for(var i in dim.timeouts.ids)
			if(id == dim.timeouts.ids[i] || id === undefined)
				window.clearInterval(dim.timeouts.ids[i]);
	};

	dim.timeouts.set = function(code, delay) {
		var timeout = setTimeout(code, delay);
		dim.timeouts.ids.push(timeout);
		return timeout;
	};

	var setInterval = dim.intervals.set;
	var clearInterval = dim.intervals.clear;

/***************** end interval/timeout system */

	function positionElement(element, target, directions, debug) {
debug = 0;
if(debug) dim.log.call('position element:', element, target, directions);
		if(!directions)
			directions = [ 'top', 'right', 'bottom', 'left' ];
		if(!(directions instanceof Array))
			directions = [ directions ];

if(debug) dim.log.call('directions are ' + directions.join(', '));

		var wasHid = 0;
		if(hidden(element)) {
			show(element);
			wasHid = 1;
		}
		element.style.top = '';
		element.style.left = '';
		var rect = element.getBoundingClientRect();
		var trect = target.getBoundingClientRect();
		var crect = dim.menu.container.element.getBoundingClientRect();
		var coff = getOffsetSum(dim.menu.container.element);
		var positioned = 0;
		var lastPositioned = 0;
		if(typeof element.lastPositioned != 'undefined' && element.lastPositioned)
			lastPositioned = element.lastPositioned;
		var menuLastPositioned = 0;
		if(typeof dim.menus.lastPositioned != 'undefined' && dim.menus.lastPositioned)
			menuLastPositioned = dim.menus.lastPositioned;
		for(var i in directions) {
			if(!positioned) {
				var direction = directions[i];
if(debug) dim.log.call('trying ' + direction);
				switch(direction) {
					case 'center':
						var newTop = trect.top + (trect.height / 2);
						newTop -= rect.height / 2;
						newTop -= crect.top;
						var newLeft = trect.left + (trect.width / 2);
						newLeft -= rect.left + (rect.width / 2);
						element.style.top = newTop + 'px';
						element.style.left = newLeft + 'px';
						positioned = 'center';
						break;
					case 'top':
						var newTop = trect.top;
						newTop -= rect.top;
						newTop -= rect.height;

						var newLeft = trect.left + (trect.width / 2);
						newLeft -= rect.left + (rect.width / 2);

						var oob = 0;
						if(newTop + rect.top < 0) {
							oob = 1;
if(debug) dim.log.call('oob top with ' + (newTop + rect.top));
						}
						if(newTop + rect.height > window.height) {
							oob = 1;
if(debug) dim.log.call('oob bottom with ' + newTop + ' + ' + rect.height + ' > ' + window.height);
						}
						if(newLeft + rect.left < 0) {
							oob = 1;
if(debug) dim.log.call('oob left with ' + (newLeft + rect.left));
						}
						if(newLeft + rect.left + rect.width > document.body.getBoundingClientRect().width) {
							oob = 1;
if(debug) dim.log.call('oob right with ' + (rect.left + rect.width) + ' > ' + document.body.getBoundingClientRect().width);
						}
						if(!oob || directions.length == 1) {
							element.style.top = newTop + 'px';
							element.style.left = newLeft + 'px';
							positioned = 'top';
						}
else if(debug) dim.log.call('skipping top');
						break;
					case 'right':
						var valign = 'top';  // 'top' or 'middle' or 'bottom', this is the default here
						var newTop = 0;
						if(valign == 'top')
							newTop = trect.top;
						if(valign == 'middle' || valign == 'center') {
							newTop = trect.top + (trect.height / 2);
							newTop -= rect.height / 2;
						}
						if(valign == 'bottom') {
							newTop = trect.top + trect.height;
							newTop -= rect.height;
						}
						newTop -= crect.top;
						var topSwitchbackAdjust = menuLastPositioned === 'left'?rect.height / 2:0;
topSwitchbackAdjust = 0;
						var newLeft = trect.right - rect.left;
						var oob = 0;  // out-of-bounds
						if(newTop + rect.top + topSwitchbackAdjust < 0) {
							var adjust = (newTop + rect.top) * -1;
							if(adjust < rect.height)
								if(newTop + rect.top + adjust >= 0)
									newTop += adjust;
// TODO: no, this needs to calculate adjustment boundaries based on half-height, because it's by default vertically-centered
							if(newTop + rect.top < 0) {
								oob = 1;
if(debug) dim.log.call('oob top with ' + newTop);
							}
						}
						if(newTop + rect.height + topSwitchbackAdjust > window.height) {
							var adjust = window.height - (newTop + rect.height);
							if(adjust < rect.height)
								if(newTop + rect.top + adjust >= 0)
									newTop += adjust;
							oob = 1;
if(debug) dim.log.call('oob bottom with ' + newTop + ' + ' + rect.height + ' > ' + window.height);
						}
						if(newLeft + rect.left < 0) {
							oob = 1;
if(debug) dim.log.call('oob left with ' + newLeft);
						}
//dim.log.call('checking newLeft ' + newLeft + ' + rect.left ' + rect.left + ' + rect.width ' + rect.width + ' (' + (newLeft + rect.left + rect.width) + ') > ' + document.body.getBoundingClientRect().width);
						if(newLeft + rect.left + rect.width > document.body.getBoundingClientRect().width) {
							oob = 1;
if(debug) dim.log.call('oob right with ' + newLeft + ' + ' + rect.width + ' > ' + document.body.getBoundingClientRect().width);
						}
						if(!oob || directions.length == 1) {
							element.style.top = (newTop + topSwitchbackAdjust) + 'px';
							element.style.left = newLeft + 'px';
							positioned = 'right';
						}
else if(debug) dim.log.call('skipping right');
						break;
					case 'bottom':
						var newTop = trect.bottom - rect.top;

						var newLeft = trect.left + (trect.width / 2);
						newLeft -= rect.left + (rect.width / 2);

						var oob = 0;
						if(newTop + rect.top < 0) {
							oob = 1;
if(debug) dim.log.call('oob top with ' + newTop);
						}
						if(newTop + rect.height > window.height) {
							oob = 1;
if(debug) dim.log.call('oob bottom with ' + newTop + ' + ' + rect.height + ' > ' + window.height);
						}
						if(newLeft + rect.left < 0) {
							oob = 1;
if(debug) dim.log.call('oob left with ' + newLeft);
						}
						if(newLeft + rect.left + rect.width > document.body.getBoundingClientRect().width) {
							oob = 1;
if(debug) dim.log.call('oob right with ' + newLeft + ' + ' + rect.width + ' > ' + window.width);
						}
						if(!oob || directions.length == 1) {
							element.style.top = newTop + 'px';
							element.style.left = newLeft + 'px';
							positioned = 'bottom';
						}
else if(debug)console.log('skipping bottom');
						break;
					case 'left':
						var valign = 'top';  // 'top' or 'middle' or 'bottom', this is the default here
						var newTop = 0;
						if(valign == 'top')
							newTop = trect.top;
						if(valign == 'middle' || valign == 'center') {
							newTop = trect.top + (trect.height / 2);
							newTop -= rect.height / 2;
						}
						if(valign == 'bottom') {
							newTop = trect.top + trect.height;
							newTop -= rect.height;
						}
						newTop -= crect.top;
						var topSwitchbackAdjust = menuLastPositioned === 'right'?rect.height / 2:0;
topSwitchbackAdjust = 0;

						var newLeft = trect.left;
						newLeft -= rect.left;
						newLeft -= rect.width;

						var oob = 0;
						if(newTop + rect.top + topSwitchbackAdjust < 0) {
							oob = 1;
if(debug) dim.log.call('oob top with ' + newTop);
						}
						if(newTop + rect.height + topSwitchbackAdjust > window.height) {
							oob = 1;
if(debug) dim.log.call('oob bottom with ' + newTop + ' + ' + rect.height + ' > ' + window.height);
						}
						if(newLeft + rect.left < 0) {
							oob = 1;
if(debug) dim.log.call('oob left with ' + newLeft);
						}
						if(newLeft + rect.left + rect.width > document.body.getBoundingClientRect().width) {
							oob = 1;
if(debug) dim.log.call('oob right with ' + newLeft + ' + ' + rect.width + ' > ' + window.width);
						}
						if(!oob || directions.length == 1) {
							element.style.top = (newTop + topSwitchbackAdjust) + 'px';
							element.style.left = newLeft + 'px';
							positioned = 'left';
						}
else if(debug) dim.log.call('skipping left');
						break;
				}
if(positioned) if(debug) dim.log.call('menu position ' + direction);
			}
		}
		element.lastPositioned = positioned;
		if(!positioned) {
			positionElement(element, target, directions[0], debug);
			positioned = directions[0];
			//console.log("drop-in-menu.js: couldn't find good position for menu; forced into place");
		}
		if(wasHid)
			hide(element);
		return positioned;
	}

	function get(selector, skipID) {
		return document.querySelector((skipID?'':'#' + dim.id) + ' ' + selector);
	}

	function gather(selector, skipID) {
		var elements = document.querySelectorAll((skipID?'':'#' + dim.id) + ' ' + selector);
		var element_array = [ ];
		for(var i = 0; i < elements.length; i++)
			element_array.push(elements[i]);
		return element_array;
	}

	function hasClass(className, element) {
		if(element == null || element === undefined)
			return false;
		var classes = element.className.split(' ');
		var new_classes = new Array();
		for(var i in classes)
			if(classes[i] == className)
				return true;
		return false;
	}

	function addClass(className, elements, debug) {
		if(elements == null || elements === undefined)
			return;
		if(!(elements instanceof Array))
			elements = [ elements ];
		for(var i in elements) {
			var element = elements[i];
			if(element instanceof Array)
				addClass(className, element, debug);
			else if(element != null && element !== undefined) {
				var classes = element.className.split(' ');
				var new_classes = new Array();
				var found = 0;
				for(var j in classes) {
					new_classes.push(classes[j]);
					if(classes[j] == className)
						found = 1;
				}
				if(!found)
					new_classes.push(className);
				element.className = new_classes.join(' ');
			}
		}
	}

	function removeClass(className, elements) {
		if(elements == null || elements === undefined)
			return;
		if(!(elements instanceof Array))
			elements = [ elements ];
		for(var i in elements) {
			var element = elements[i];

			if(element instanceof Array)
				removeClass(className, element, debug);
			else if(element != null && element !== undefined) {
				if(element.className) {
					var classes = element.className.split(' ');
					var new_classes = new Array();
					for(var j in classes)
						if(classes[j] != className)
							new_classes.push(classes[j]);
					element.className = new_classes.join(' ');
				}
			}
		}
	}

	function hide(elements, illegal) {
		if(typeof(illegal) != 'undefined')
			console.log('illegal use of hide() - second argument attempted, use single array of arguments instead');
		return addClass('hide', elements);
	}

	function hidden(element) {
		return hasClass('hide', element);
	}

	function show(elements, illegal) {
		if(typeof(illegal) != 'undefined')
			console.log('illegal use of show() - second argument attempted, use single array of arguments instead');
		return removeClass('hide', elements);
	}

	function shown(element) {
		return !hidden(element);
	}

	function invis(elements, illegal) {
		if(typeof(illegal) != 'undefined')
			console.log('illegal use of invis() - second argument attempted, use single array of arguments instead');
		return addClass('invis', elements);
	}

	function isinvis(element) {
		return hasClass('invis', element);
	}

	function vis(elements, illegal) {
		if(typeof(illegal) != 'undefined')
			console.log('illegal use of hide() - second argument attempted, use single array of arguments instead');
		return removeClass('invis', elements);
	}

	function isvis(element) {
		return !isinvis(element);
	}

	dim.setCookie = function(cookieName, value, expireDays) {
		if(expireDays != -1)
			dim.setCookie(cookieName, '', -1);
		if(value === 'null' || value === null)
			return;
		var expires = '';
		if(typeof(expireDays) != 'undefined' && expireDays) {
			var d = new Date();
			d.setTime(d.getTime() + (expireDays * 24 * 60 * 60 * 1000));
			expires = "; expires=" + d.toUTCString();
		}
		if(expireDays == -1)
			document.cookie = cookieName + "=" + value + expires;  // no path for this one, to clear all
		document.cookie = cookieName + "=" + value + expires + '; path=/';
		if(expireDays != -1)
			if(typeof dim.menu.config.callback != 'undefined' && dim.menu.config.callback)  // okay, so it's not really a 'callback'
				dim.menu.config.callback(cookieName, value);
	};

	dim.getCookie = function(cookieName) {
		var name = cookieName + "=";
		var ca = document.cookie.split(';');
		for(var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while(c.charAt(0) == ' ')
				c = c.substring(1);
			if(c.indexOf(name) == 0) {
				return c.substring(name.length, c.length);
			}
		}
		return 0;
	};

	dim.cloneObject = function(obj) {
		if(null == obj || typeof obj != "object")
			return obj;
		var copy = obj.constructor();
		for(var attr in obj)
			if(obj.hasOwnProperty(attr))
				copy[attr] = obj[attr];
		return copy;
	};

	function addEventListener(element, event, code) {
		if(typeof dim.eventListeners == 'undefined')
			dim.eventListeners = [ ];

		if(element.addEventListener) {
			dim.eventListeners.push({ element: element, type: event, code: code });
			return element.addEventListener(event, code);
		}
		var translatedEventNames = {
			'click': 'onclick',
			'dblclick': 'ondblclick',
			'load': 'onload',
			'mousedown': 'onmousedown',
			'mouseup': 'onmouseup',
			'mousemove': 'onmousemove',
			'mouseover': 'onmouseover',
			'mouseout': 'onmouseout'
		};
		if(element.attachEvent)  // go microsoft!
			for(var search in translatedEventNames) {
				if(event.toLowerCase() === search.toLowerCase() && translatedEventNames[search])
					event = translatedEventNames[search];
				dim.eventListeners.push({ element: element, type: event, code: code });
				return element.attachEvent(event, code);
			}
	}

	function removeEventListeners() {
		if(typeof dim.eventListeners != 'undefined')
			for(var i in dim.eventListeners) {
				var event = dim.eventListeners[i];
				var element = event.element;
				if(element.addEventListener)
					element.removeEventListener(event.type, event.code);
				if(element.attachEvent)
					element.detachEvent(event.type, event.code);
			}
		dim.eventListeners = [ ];
	}

	function pauseEvent(event) {  // for killing drag-select on scrubbing or other events
		if(event.stopPropagation)
			event.stopPropagation();
		if(event.preventDefault)
			event.preventDefault();
		event.cancelBubble = true;
		event.returnValue = false;
		return false;
	}

	function getOffsetSum(element) {  // one way of calculating dimensions
		var top = 0, left = 0;
		while(element) {
			top += parseInt(element.offsetTop);
			left += parseInt(element.offsetLeft);
			element = element.offsetParent;
		}
		return { top: top, left: left };
	}

	function getURLParameter(name) {
		return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search)||[,""])[1].replace(/\+/g, '%20'))||null
	}

	dim.loaded = true;
	dim.status = 'loaded';
	dim.initialize();
};

