var twitter_scroll = {
  act : 1,
  max : 10,
  
  next: function(){
    
    if (twitter_scroll.act < twitter_scroll.max){
      $('#twitter_scroll_'+twitter_scroll.act).hide();
      twitter_scroll.act++;
      $('#twitter_scroll_'+twitter_scroll.act).show();
      $('#twitter_scroll_prev').removeClass('grey');
    }
    
    if(twitter_scroll.act == twitter_scroll.max) {
      $('#twitter_scroll_next').addClass('grey');
    }
    
  },
  prev : function() {
    
    if (twitter_scroll.act > 1) {
      $('#twitter_scroll_'+twitter_scroll.act).hide();
      twitter_scroll.act--;
      $('#twitter_scroll_'+twitter_scroll.act).show();
      $('#twitter_scroll_next').removeClass('grey');
    }
    
    if(twitter_scroll.act == 1) {
      $('#twitter_scroll_prev').addClass('grey');
    }
    
  },
  set_max : function(max) {
    if(max < twitter_scroll.max)
      twitter_scroll.max = max;
  }
  
}
$(document).ready(function(){
   twitter_scroll.max = $('#tweets li').length
});