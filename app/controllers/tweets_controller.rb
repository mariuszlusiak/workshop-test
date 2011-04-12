class TweetsController < ApplicationController
  
  before_filter :login_required

  def index
    @tweets = current_user.latest_tweets
  end

end
