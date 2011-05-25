class Micropost < ActiveRecord::Base
  validates :content, :length => { :maximum => 140 }
  attr_accessible :user_id, :content
end
