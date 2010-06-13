class HomeController < ApplicationController
  
  def index

    require 'twitter'

    begin
    @pics = Rails.cache.fetch('last_pics', :expires_in => 1800) {
      FlickPic.new.init.find_all
    }
    rescue
    end
    
    begin
    @tweets = Rails.cache.fetch('last_tweets', :expires_in => 1800) {
      Twitter::timeline(TWITTER_USER_NAME, :count => 10)
    }
    rescue
    end
    
  end
  
end
