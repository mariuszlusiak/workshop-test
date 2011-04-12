class TwitterUser < ActiveRecord::Base
  
  belongs_to :user
  
  def status
    Twitter.user_timeline(name).first.text
  end
  
end
