!function(){"use strict";function e(){function e(){function e(e,n){function r(e){var n=1===(a=1-a)?"width":"height";return Math.floor(Number(e)*t[n])}var a=0;c[n].coords=e.split(",").map(r).join(",")}var t={width:f.width/f.naturalWidth,height:f.height/f.naturalHeight};d.forEach(e)}function t(e){return e.coords.replace(/ *, */g,",").replace(/ +/g,",")}function n(){clearTimeout(l),l=setTimeout(e,250)}function r(){(f.width!==f.naturalWidth||f.height!==f.naturalHeight)&&e()}function a(){f.addEventListener("load",e,!1),window.addEventListener("focus",e,!1),window.addEventListener("resize",n,!1),window.addEventListener("readystatechange",e,!1),document.addEventListener("fullscreenchange",e,!1)}function i(){return"function"==typeof u._resize}function o(){c=u.getElementsByTagName("area"),d=Array.prototype.map.call(c,t),f=document.querySelector('img[usemap="#'+u.name+'"]'),u._resize=e}var u=this,c=null,d=null,f=null,l=null;i()?u._resize():(o(),a(),r())}function t(){function t(e){if(!e.tagName)throw new TypeError("Object is not a valid DOM element");if("MAP"!==e.tagName.toUpperCase())throw new TypeError("Expected <MAP> tag, found <"+e.tagName+">.")}function n(n){n&&(t(n),e.call(n),r.push(n))}var r;return function(e){switch(r=[],typeof e){case"undefined":case"string":Array.prototype.forEach.call(document.querySelectorAll(e||"map"),n);break;case"object":n(e);break;default:throw new TypeError("Unexpected data type ("+typeof e+").")}return r}}"function"==typeof define&&define.amd?define([],t):"object"==typeof module&&"object"==typeof module.exports?module.exports=t():window.imageMapResize=t(),"jQuery"in window&&(jQuery.fn.imageMapResize=function(){return this.filter("map").each(e).end()})}();