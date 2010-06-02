# http://hanklords.github.com/flickraw/

class FlickPic
  
  @@pic_url = 'http://farm%s.static.flickr.com/%s/%s_%s%s.%s'.freeze
  
  @data = {}
  
  # initialize class
  def init
    
    require 'flickraw'
    
    FlickRaw.api_key = FLICKR_API_KEY
    FlickRaw.shared_secret = FLICKR_SHARED_SECRET
    
    @@user_url = flickr.people.getInfo(:user_id => FLICKR_USER_ID).photosurl

    return self
    
  end
  
  # find most recent pics from user
  def find_all options_for_render = {}
    
    options_for_render[:per_page] ||= 6
    options_for_render[:page] ||= 1
    
    result = []
    
    #@flickr = Rails.cache.fetch('flickr_recent', :expires_in => 1800)
    
    flickr.people.getPublicPhotos(
      :user_id => FLICKR_USER_ID,
      :per_page => options_for_render[:per_page],
      :page => options_for_render[:page]
    ).each do |photo|
      flick = FlickPic.new
      flick.open(photo)
      result << flick
    end
    
    return result
    
  end
  
  def open data
    @data = data
  end
  
  # get size specific pic-url
  # size: m, s, t, b, o
  def url (size = "")
    size = "_"+size if size != ""
    @@pic_url % [@data.farm, @data.server, @data.id, @data.secret, size, "jpg"]
  end
  
  def title
    @data.title
  end
  
  def link
    @@user_url+@data.id+'/'
  end
    
end