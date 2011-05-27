class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  attr_accessible :content
  
  default_scope :order => 'microposts.created_at DESC'
  
  
  
  
  
end
