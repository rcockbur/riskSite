// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require rails-ujs
//= require turbolinks
//= require_tree .
$( document ).ready(function() {
    // Handler for .ready() called.
    document.getElementsByClassName("js-link-home")[0].addEventListener("click", function() {
        window.location.href = '/home';
    });
    document.getElementsByClassName("js-link-units")[0].addEventListener("click", function() {
        window.location.href = '/units';
    });
    document.getElementsByClassName("js-link-nations")[0].addEventListener("click", function() {
        window.location.href = '/nations';
    });
    document.getElementsByClassName("js-link-strategy")[0].addEventListener("click", function() {
        window.location.href = '/strategy';
    });
    document.getElementsByClassName("js-link-structures")[0].addEventListener("click", function() {
        window.location.href = '/structures';
    });


    switch(window.location.pathname) {
        case '/units':
            var d = document.getElementsByClassName("js-link-units")[0];
            d.className += " header-link-selected";
            break;
        case '/structures':
            var d = document.getElementsByClassName("js-link-structures")[0];
            d.className += " header-link-selected";
            break;
        case '/strategy':
            var d = document.getElementsByClassName("js-link-strategy")[0];
            d.className += " header-link-selected";
            break;
        case '/nations':
            var d = document.getElementsByClassName("js-link-nations")[0];
            d.className += " header-link-selected";
            break;
        default:
            var d = document.getElementsByClassName("js-link-home")[0];
            d.className += " header-link-selected";
            break;
    }
});
