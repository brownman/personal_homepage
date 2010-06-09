# http://apiwiki.twitter.com/Twitter-REST-API-Method:-statuses-user_timeline
class MyTwit
  
  @data = {}
  
  def initialize()
    
    require 'open-uri'
    require 'json'
    
    @@user_name = TWITTER_USER_NAME
        
  end
  
  def icon()
    @data.user['profile_image_url']
  end
  
  def find_all options_for_render = {}
    
    options_for_render[:per_page] ||= 6
    options_for_render[:page] ||= 1
    
    begin
      buffer = open("http://api.twitter.com/1/statuses/user_timeline/#{@@user_name}.json?page=#{options_for_render[:page]}&count=#{options_for_render[:per_page]}").read
    rescue
      
    end
    
    if buffer
      @data = JSON.parse(buffer)
    
      @timeline = JSON.parse(buffer)
      p @timeline
      options_for_render[:per_page] ||= 6
      options_for_render[:page] ||= 1
    
      result = []
    
      p @data
    
      return result
    end
  end
  
end