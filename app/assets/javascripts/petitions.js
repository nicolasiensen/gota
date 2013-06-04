// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    after: function(){ 
      $('.flex-active-slide .info').fadeIn();
    },
    before: function(){
      $('.flex-active-slide .info').fadeOut();
    }
  });
  $('.featured_petition .info').hide();
  $('.flex-active-slide .info').show();
  $('.flexslider .flex-viewport').css("overflow", "visible");

  var page = 1;
  $("#posts_loader").hide();
  $('#more_posts').click(function(){
    page++;
    $("#posts_loader").fadeIn();
    $.get("/posts?page=" + page, function(data, text, xhr){
      $("#posts_loader").hide();
      var counter = $(".featured_post").size();
      $("#posts").append(data);
      if($(".featured_post").size() - counter < 3) { $(".more_posts").remove(); }
    });
    return false;
  });
});
