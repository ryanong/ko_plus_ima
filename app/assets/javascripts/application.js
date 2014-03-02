// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require_self

$(document).ready( function() {
  $("#new_attendee").on("ajax:success", function(e, data, status, xhr){
    $("#new_attendee").animate({ opacity: 0 });
    $("#rsvp .overlay").html("Thanks for RSVPing!");
    $("#rsvp .overlay").animate({ opacity: 1, "z-index": 100});
  }).on("ajax:error", function(e, xhr, status, error){
    $("#new_attendee").animate({ opacity: 0 });
    $("#rsvp .overlay").html("Something went wrong! Please reload the page and try again.");
    $("#rsvp .overlay").animate({ opacity: 1, "z-index": 100});
  });
});
