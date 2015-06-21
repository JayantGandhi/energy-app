# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready () ->
  $('.article-slider').slick
    infinite: true,
    prevArrow: '<div class="arrow-back"><span class="icon-left-open-big"></span></div>',
    nextArrow: '<div class="arrow-next"><span class="icon-right-open-big"></span></div>',
    autoplay: false,
    lazyLoad: 'progressive'
