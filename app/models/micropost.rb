class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, :presence => true, :length => { :maximum => 140 }
  attr_accessible :user_id, :content
end
