class User < ActiveRecord::Base
  has_many :microposts, :dependent => :destroy



  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :username, :password_confirmation, :remember_me
  
  # Validations
  validates :username, :presence => true, :length => { :maximum => 30 }
  
   def feed
    # This is preliminary. See Chapter 12 for the full implementation.
    Micropost.where("user_id = ?", id)
  end
  
  

end
