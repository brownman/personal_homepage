var twitter_scroll = {
  act : 0,
  max : 10,
  
  next: function(){
    if(twitter_scroll.act >= twitter_scroll.max-1) {
      $('#twitter_scroll_next').addClass('grey');
    }
    else if (twitter_scroll.act < twitter_scroll.max){
      $('#twitter_scroll_'+twitter_scroll.act).hide();
      twitter_scroll.act++;
      $('#twitter_scroll_'+twitter_scroll.act).show();
      $('#twitter_scroll_prev').removeClass('grey');
    }
  },
  prev : function() {
    if(twitter_scroll.act <= 1) {
      $('#twitter_scroll_prev').addClass('grey');
    }
    else if (twitter_scroll.act > 0) {
      $('#twitter_scroll_'+twitter_scroll.act).hide();
      twitter_scroll.act--;
      $('#twitter_scroll_'+twitter_scroll.act).show();
      $('#twitter_scroll_next').removeClass('grey');
    }
  }
  
}
$(document).ready(function(){
   
});