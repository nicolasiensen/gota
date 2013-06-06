// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.facebox
//= require foundation
//= require flexslider
//= require petitions

$(document).foundation();

$(function(){
  $('a[rel*=facebox]').facebox()

  $(document).bind('reveal.facebox', function() {
    $("form.new_user")
      .bind("ajax:beforeSend", function(){
        $("form.new_user .alert").hide();
      })
      .bind("ajax:success", function(){
        location.reload(true);
      })
      .bind("ajax:error", function(xhr, status, error){
        $("form.new_user .alert").fadeIn();
      })
  });
});
