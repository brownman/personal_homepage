class HomeController < ApplicationController
  
  def index
    #obj = flickr.people.getPublicPhotos(
    #                :user_id => flickr_user_id,
    #                :per_page => 6,:page => 1 )
                    
    #@flickr = Rails.cache.fetch('flickr_recent', :expires_in => 1800)
    
    @pics = FlickPic.new.init.find_all
    @twits = MyTwit.new().find_all

    #@photos.each do |r|
    #  def url(r);   flickr_pic_url % [r.farm, r.server, r.id, r.secret, "",   "jpg"]   end
    #  def url_m(r); flickr_pic_url % [r.farm, r.server, r.id, r.secret, "_m", "jpg"] end
    #  def url_s(r); flickr_pic_url % [r.farm, r.server, r.id, r.secret, "_s", "jpg"] end
    #  def url_t(r); flickr_pic_url % [r.farm, r.server, r.id, r.secret, "_t", "jpg"] end
    #  def url_b(r); flickr_pic_url % [r.farm, r.server, r.id, r.secret, "_b", "jpg"] end
    #  def url_o(r); flickr_pic_url % [r.farm, r.server, r.id, r.originalsecret, "_o", r.originalformat] end
    #end
  end
  
end
