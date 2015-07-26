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
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).on('ready page:load', function() {
    $('.carousel').carousel({interval: 3000});

    $('.page-content').on('click', '#rules-button', function(){
      $('.page-content #rules-text').slideToggle('slow');
    })

    nav('#profile',  '/players/show','GET');
    nav('#results',  '/players/show','GET');
    nav('#messages', '/players/show','GET');
    nav('#4-for-4',  '/pools/show?pool_id=1', 'GET');
    nav('#6-for-6',  '/pools/show?pool_id=2', 'GET');
    nav('#knockout', '/pools/show?pool_id=3', 'GET');
    nav('#streak',   '/pools/show?pool_id=4', 'GET');

    // rulesToggle('#rules-button','.pools');

    signUp('.signup-button','players/new','GET');


});

var signUp = function(selector, url, method) {
  $(selector).on('click', function(event){
    event.preventDefault();
    $.ajax({
      method: method,
      url: url,
    })
    .done(function ( response ) {
      // console.log(response);
      $("#login-form-container").fadeOut(function(){
        $("#login-form-container").html(response).hide();
      });
      $("#login-form-container").fadeIn( "slow" );
      });
  })
}

var nav = function(selector, url, method) {
  $(selector).on('click', function(event){
    event.preventDefault();
    $.ajax({
      method: method,
      url: url,
    })
    .done(function ( response ) {
      $( "li" ).removeClass( "active" );
      if (url == '/pools/show'){
        $('#pools').addClass("active");
      }
      $(selector).parent("li").addClass("active");
      $(".page-content").slideToggle( "slow", function(){
        $(".page-content").html(response).hide();
      });
      $(".page-content").slideToggle( "slow" );
      });
  })
}

// var rulesToggle = function(selector,elementToToggle) {

// }

