// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(document).on('ready page:load', function() {
  // Bootstrap Carousel
  $('#homeCarousel').carousel({
    interval:10000,
    pause: "false"
  });

  // Product overlay
  $(".tile-offset").on('mouseenter touchstart', function(){
    $(this).find(".product-overlay").removeClass('HIDE');
  });
  $(".tile-offset").on('mouseleave touchmove',function(){
    $(this).find(".product-overlay").addClass('HIDE');
  });
  $('.modaling').on('click', function() {
    id = $(this).attr('href');
    $(id).modal('toggle');
  });
});
