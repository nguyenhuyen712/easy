// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require i18n
//= require i18n.js
//= require i18n/translations
//= require_tree .

$(document).ready(function(){
  // var navoffeset=$(".agileits_header").offset().top;
  //  $(window).scroll(function(){
  //   var scrollpos=$(window).scrollTop();
  //   if(scrollpos >=navoffeset){
  //     $(".agileits_header").addClass("fixed");
  //   }else{
  //     $(".agileits_header").removeClass("fixed");
  //   }
  //  });

  $(".dropdown").hover(
    function() {
        $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
        $(this).toggleClass('open');
    },
    function() {
        $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
        $(this).toggleClass('open');
    }
  );

  // paypal.minicart.render({
  //   action: '#'
  // });

  // if (~window.location.search.indexOf('reset=true')) {
  //   paypal.minicart.reset();
  // }
});
