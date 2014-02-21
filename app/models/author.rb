class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # has_attached_file :profile_picture
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :profile_picture
  # attr_accessible :title, :body
  # validates :email, :password_confirmation, :password, presence: true
  
  after_create :send_welcome_email
 
   private
 
   def send_welcome_email
    UserMailer.welcome(self).deliver
   end
  

end
