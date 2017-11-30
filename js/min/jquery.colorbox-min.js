!function($,t,e){function i(e,i,n){var o=t.createElement(e);return i&&(o.id=x+i),n&&(o.style.cssText=n),$(o)}function n(){return e.innerHeight?e.innerHeight:$(e).height()}function o(t,e){e!==Object(e)&&(e={}),this.cache={},this.el=t,this.value=function(t){var i;return void 0===this.cache[t]&&(i=$(this.el).attr("data-cbox-"+t),void 0!==i?this.cache[t]=i:void 0!==e[t]?this.cache[t]=e[t]:void 0!==w[t]&&(this.cache[t]=w[t])),this.cache[t]},this.get=function(t){var e=this.value(t);return $.isFunction(e)?e.call(this.el,this):e}}function r(t){var e=P.length,i=(tt+t)%e;return 0>i?e+i:i}function h(t,e){return Math.round((/%/.test(t)?("x"===e?K.width():n())/100:1)*parseInt(t,10))}function a(t,e){return t.get("photo")||t.get("photoRegex").test(e)}function s(t,i){return t.get("retinaUrl")&&e.devicePixelRatio>1?i.replace(t.get("photoRegex"),t.get("retinaSuffix")):i}function l(t){"contains"in I[0]&&!I[0].contains(t.target)&&t.target!==E[0]&&(t.stopPropagation(),I.focus())}function d(t){d.str!==t&&(I.add(E).removeClass(d.str).addClass(t),d.str=t)}function c(t){tt=0,t&&t!==!1&&"nofollow"!==t?(P=$("."+y).filter(function(){var e=$.data(this,v),i=new o(this,e);return i.get("rel")===t}),tt=P.index(J.el),-1===tt&&(P=P.add(J.el),tt=P.length-1)):P=$(J.el)}function g(e){$(t).trigger(e),Q.triggerHandler(e)}function u(e){var n;if(!ot){if(n=$(e).data(v),J=new o(e,n),c(J.get("rel")),!it){it=nt=!0,d(J.get("className")),I.css({visibility:"hidden",display:"block",opacity:""}),j=i(at,"LoadedContent","width:0; height:0; overflow:hidden; visibility:hidden"),L.css({width:"",height:""}).append(j),V=M.height()+F.height()+L.outerHeight(!0)-L.height(),X=O.width()+R.width()+L.outerWidth(!0)-L.width(),Y=j.outerHeight(!0),Z=j.outerWidth(!0);var r=h(J.get("initialWidth"),"x"),a=h(J.get("initialHeight"),"y"),s=J.get("maxWidth"),u=J.get("maxHeight");J.w=Math.max((s!==!1?Math.min(r,h(s,"x")):r)-Z-X,0),J.h=Math.max((u!==!1?Math.min(a,h(u,"y")):a)-Y-V,0),j.css({width:"",height:J.h}),ht.position(),g(b),J.get("onOpen"),G.add(_).hide(),I.focus(),J.get("trapFocus")&&t.addEventListener&&(t.addEventListener("focus",l,!0),Q.one(W,function(){t.removeEventListener("focus",l,!0)})),J.get("returnFocus")&&Q.one(W,function(){$(J.el).focus()})}var f=parseFloat(J.get("opacity"));E.css({opacity:f===f?f:"",cursor:J.get("overlayClose")?"pointer":"",visibility:"visible"}).show(),J.get("closeButton")?q.html(J.get("close")).appendTo(L):q.appendTo("<div/>"),m()}}function f(){I||(dt=!1,K=$(e),I=i(at).attr({id:v,"class":$.support.opacity===!1?x+"IE":"",role:"dialog",tabindex:"-1"}).hide(),E=i(at,"Overlay").hide(),D=$([i(at,"LoadingOverlay")[0],i(at,"LoadingGraphic")[0]]),S=i(at,"Wrapper"),L=i(at,"Content").append(_=i(at,"Title"),A=i(at,"Current"),U=$('<button type="button"/>').attr({id:x+"Previous"}),z=$('<button type="button"/>').attr({id:x+"Next"}),N=$('<button type="button"/>').attr({id:x+"Slideshow"}),D),q=$('<button type="button"/>').attr({id:x+"Close"}),S.append(i(at).append(i(at,"TopLeft"),M=i(at,"TopCenter"),i(at,"TopRight")),i(at,!1,"clear:left").append(O=i(at,"MiddleLeft"),L,R=i(at,"MiddleRight")),i(at,!1,"clear:left").append(i(at,"BottomLeft"),F=i(at,"BottomCenter"),i(at,"BottomRight"))).find("div div").css({"float":"left"}),B=i(at,!1,"position:absolute; width:9999px; visibility:hidden; display:none; max-width:none;"),G=z.add(U).add(A).add(N)),t.body&&!I.parent().length&&$(t.body).append(E,I.append(S,B))}function p(){function e(t){t.which>1||t.shiftKey||t.altKey||t.metaKey||t.ctrlKey||(t.preventDefault(),u(this))}return I?(dt||(dt=!0,z.click(function(){ht.next()}),U.click(function(){ht.prev()}),q.click(function(){ht.close()}),E.click(function(){J.get("overlayClose")&&ht.close()}),$(t).bind("keydown."+x,function(t){var e=t.keyCode;it&&J.get("escKey")&&27===e&&(t.preventDefault(),ht.close()),it&&J.get("arrowKey")&&P[1]&&!t.altKey&&(37===e?(t.preventDefault(),U.click()):39===e&&(t.preventDefault(),z.click()))}),$.isFunction($.fn.on)?$(t).on("click."+x,"."+y,e):$("."+y).live("click."+x,e)),!0):!1}function m(){var t,n,o=ht.prep,r,l=++st;if(nt=!0,et=!1,g(k),g(T),J.get("onLoad"),J.h=J.get("height")?h(J.get("height"),"y")-Y-V:J.get("innerHeight")&&h(J.get("innerHeight"),"y"),J.w=J.get("width")?h(J.get("width"),"x")-Z-X:J.get("innerWidth")&&h(J.get("innerWidth"),"x"),J.mw=J.w,J.mh=J.h,J.get("maxWidth")&&(J.mw=h(J.get("maxWidth"),"x")-Z-X,J.mw=J.w&&J.w<J.mw?J.w:J.mw),J.get("maxHeight")&&(J.mh=h(J.get("maxHeight"),"y")-Y-V,J.mh=J.h&&J.h<J.mh?J.h:J.mh),t=J.get("href"),rt=setTimeout(function(){D.show()},100),J.get("inline")){var d=$(t);r=$("<div>").hide().insertBefore(d),Q.one(k,function(){r.replaceWith(d)}),o(d)}else J.get("iframe")?o(" "):J.get("html")?o(J.get("html")):a(J,t)?(t=s(J,t),et=J.get("createImg"),$(et).addClass(x+"Photo").bind("error."+x,function(){o(i(at,"Error").html(J.get("imgError")))}).one("load",function(){l===st&&setTimeout(function(){var t;J.get("retinaImage")&&e.devicePixelRatio>1&&(et.height=et.height/e.devicePixelRatio,et.width=et.width/e.devicePixelRatio),J.get("scalePhotos")&&(n=function(){et.height-=et.height*t,et.width-=et.width*t},J.mw&&et.width>J.mw&&(t=(et.width-J.mw)/et.width,n()),J.mh&&et.height>J.mh&&(t=(et.height-J.mh)/et.height,n())),J.h&&(et.style.marginTop=Math.max(J.mh-et.height,0)/2+"px"),P[1]&&(J.get("loop")||P[tt+1])&&(et.style.cursor="pointer",$(et).bind("click."+x,function(){ht.next()})),et.style.width=et.width+"px",et.style.height=et.height+"px",o(et)},1)}),et.src=t):t&&B.load(t,J.get("data"),function(t,e){l===st&&o("error"===e?i(at,"Error").html(J.get("xhrError")):$(this).contents())})}var w={html:!1,photo:!1,iframe:!1,inline:!1,transition:"elastic",speed:300,fadeOut:300,width:!1,initialWidth:"600",innerWidth:!1,maxWidth:!1,height:!1,initialHeight:"450",innerHeight:!1,maxHeight:!1,scalePhotos:!0,scrolling:!0,opacity:.9,preloading:!0,className:!1,overlayClose:!0,escKey:!0,arrowKey:!0,top:!1,bottom:!1,left:!1,right:!1,fixed:!1,data:void 0,closeButton:!0,fastIframe:!0,open:!1,reposition:!0,loop:!0,slideshow:!1,slideshowAuto:!0,slideshowSpeed:2500,slideshowStart:"START SLIDESHOW",slideshowStop:"STOP SLIDESHOW",photoRegex:/\.(gif|png|jp(e|g|eg)|bmp|ico|webp|jxr|svg)((#|\?).*)?$/i,retinaImage:!1,retinaUrl:!1,retinaSuffix:"@2x.$1",current:"image {current} of {total}",previous:"previous",next:"next",close:"close",xhrError:"This content failed to load.",imgError:"This image failed to load.",returnFocus:!0,trapFocus:!0,onOpen:!1,onLoad:!1,onComplete:!1,onCleanup:!1,onClosed:!1,rel:function(){return this.rel},href:function(){return $(this).attr("href")},title:function(){return this.title},createImg:function(){var t=new Image,e=$(this).data("cbox-img-attrs");return"object"==typeof e&&$.each(e,function(e,i){t[e]=i}),t},createIframe:function(){var e=t.createElement("iframe"),i=$(this).data("cbox-iframe-attrs");return"object"==typeof i&&$.each(i,function(t,i){e[t]=i}),"frameBorder"in e&&(e.frameBorder=0),"allowTransparency"in e&&(e.allowTransparency="true"),e.name=(new Date).getTime(),e.allowFullscreen=!0,e}},v="colorbox",x="cbox",y=x+"Element",b=x+"_open",T=x+"_load",C=x+"_complete",H=x+"_cleanup",W=x+"_closed",k=x+"_purge",E,I,S,L,M,O,R,F,P,K,j,B,D,_,A,N,z,U,q,G,Q=$("<a/>"),J,V,X,Y,Z,tt,et,it,nt,ot,rt,ht,at="div",st=0,lt={},dt,ct=function(){function t(){clearTimeout(s)}function e(){(J.get("loop")||P[tt+1])&&(t(),s=setTimeout(ht.next,J.get("slideshowSpeed")))}function i(){N.html(J.get("slideshowStop")).unbind(a).one(a,n),Q.bind(C,e).bind(T,t),I.removeClass(h+"off").addClass(h+"on")}function n(){t(),Q.unbind(C,e).unbind(T,t),N.html(J.get("slideshowStart")).unbind(a).one(a,function(){ht.next(),i()}),I.removeClass(h+"on").addClass(h+"off")}function o(){r=!1,N.hide(),t(),Q.unbind(C,e).unbind(T,t),I.removeClass(h+"off "+h+"on")}var r,h=x+"Slideshow_",a="click."+x,s;return function(){r?J.get("slideshow")||(Q.unbind(H,o),o()):J.get("slideshow")&&P[1]&&(r=!0,Q.one(H,o),J.get("slideshowAuto")?i():n(),N.show())}}();$[v]||($(f),ht=$.fn[v]=$[v]=function(t,e){var i,n=this;return t=t||{},$.isFunction(n)&&(n=$("<a/>"),t.open=!0),n[0]?(f(),p()&&(e&&(t.onComplete=e),n.each(function(){var e=$.data(this,v)||{};$.data(this,v,$.extend(e,t))}).addClass(y),i=new o(n[0],t),i.get("open")&&u(n[0])),n):n},ht.position=function(t,e){function i(){M[0].style.width=F[0].style.width=L[0].style.width=parseInt(I[0].style.width,10)-X+"px",L[0].style.height=O[0].style.height=R[0].style.height=parseInt(I[0].style.height,10)-V+"px"}var o,r=0,a=0,s=I.offset(),l,d;if(K.unbind("resize."+x),I.css({top:-9e4,left:-9e4}),l=K.scrollTop(),d=K.scrollLeft(),J.get("fixed")?(s.top-=l,s.left-=d,I.css({position:"fixed"})):(r=l,a=d,I.css({position:"absolute"})),a+=J.get("right")!==!1?Math.max(K.width()-J.w-Z-X-h(J.get("right"),"x"),0):J.get("left")!==!1?h(J.get("left"),"x"):Math.round(Math.max(K.width()-J.w-Z-X,0)/2),r+=J.get("bottom")!==!1?Math.max(n()-J.h-Y-V-h(J.get("bottom"),"y"),0):J.get("top")!==!1?h(J.get("top"),"y"):Math.round(Math.max(n()-J.h-Y-V,0)/2),I.css({top:s.top,left:s.left,visibility:"visible"}),S[0].style.width=S[0].style.height="9999px",o={width:J.w+Z+X,height:J.h+Y+V,top:r,left:a},t){var c=0;$.each(o,function(e){return o[e]!==lt[e]?void(c=t):void 0}),t=c}lt=o,t||I.css(o),I.dequeue().animate(o,{duration:t||0,complete:function(){i(),nt=!1,S[0].style.width=J.w+Z+X+"px",S[0].style.height=J.h+Y+V+"px",J.get("reposition")&&setTimeout(function(){K.bind("resize."+x,ht.position)},1),$.isFunction(e)&&e()},step:i})},ht.resize=function(t){var e;it&&(t=t||{},t.width&&(J.w=h(t.width,"x")-Z-X),t.innerWidth&&(J.w=h(t.innerWidth,"x")),j.css({width:J.w}),t.height&&(J.h=h(t.height,"y")-Y-V),t.innerHeight&&(J.h=h(t.innerHeight,"y")),t.innerHeight||t.height||(e=j.scrollTop(),j.css({height:"auto"}),J.h=j.height()),j.css({height:J.h}),e&&j.scrollTop(e),ht.position("none"===J.get("transition")?0:J.get("speed")))},ht.prep=function(e){function n(){return J.w=J.w||j.width(),J.w=J.mw&&J.mw<J.w?J.mw:J.w,J.w}function h(){return J.h=J.h||j.height(),J.h=J.mh&&J.mh<J.h?J.mh:J.h,J.h}if(it){var l,c="none"===J.get("transition")?0:J.get("speed");j.remove(),j=i(at,"LoadedContent").append(e),j.hide().appendTo(B.show()).css({width:n(),overflow:J.get("scrolling")?"auto":"hidden"}).css({height:h()}).prependTo(L),B.hide(),$(et).css({"float":"none"}),d(J.get("className")),l=function(){function e(){$.support.opacity===!1&&I[0].style.removeAttribute("filter")}var i=P.length,n,h;it&&(h=function(){clearTimeout(rt),D.hide(),g(C),J.get("onComplete")},_.html(J.get("title")).show(),j.show(),i>1?("string"==typeof J.get("current")&&A.html(J.get("current").replace("{current}",tt+1).replace("{total}",i)).show(),z[J.get("loop")||i-1>tt?"show":"hide"]().html(J.get("next")),U[J.get("loop")||tt?"show":"hide"]().html(J.get("previous")),ct(),J.get("preloading")&&$.each([r(-1),r(1)],function(){var e,i=P[this],n=new o(i,$.data(i,v)),r=n.get("href");r&&a(n,r)&&(r=s(n,r),e=t.createElement("img"),e.src=r)})):G.hide(),J.get("iframe")?(n=J.get("createIframe"),J.get("scrolling")||(n.scrolling="no"),$(n).attr({src:J.get("href"),"class":x+"Iframe"}).one("load",h).appendTo(j),Q.one(k,function(){n.src="//about:blank"}),J.get("fastIframe")&&$(n).trigger("load")):h(),"fade"===J.get("transition")?I.fadeTo(c,1,e):e())},"fade"===J.get("transition")?I.fadeTo(c,0,function(){ht.position(0,l)}):ht.position(c,l)}},ht.next=function(){!nt&&P[1]&&(J.get("loop")||P[tt+1])&&(tt=r(1),u(P[tt]))},ht.prev=function(){!nt&&P[1]&&(J.get("loop")||tt)&&(tt=r(-1),u(P[tt]))},ht.close=function(){it&&!ot&&(ot=!0,it=!1,g(H),J.get("onCleanup"),K.unbind("."+x),E.fadeTo(J.get("fadeOut")||0,0),I.stop().fadeTo(J.get("fadeOut")||0,0,function(){I.hide(),E.hide(),g(k),j.remove(),setTimeout(function(){ot=!1,g(W),J.get("onClosed")},1)}))},ht.remove=function(){I&&(I.stop(),$[v].close(),I.stop(!1,!0).remove(),E.remove(),ot=!1,I=null,$("."+y).removeData(v).removeClass(y),$(t).unbind("click."+x).unbind("keydown."+x))},ht.element=function(){return $(J.el)},ht.settings=w)}(jQuery,document,window),$(document).ready(function(){$(".ajax").colorbox({ajax:!0,width:"96%",height:"80%"})});