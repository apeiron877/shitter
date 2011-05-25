class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, :length => { :maximum => 140 }
  attr_accessible :user_id, :content
end
