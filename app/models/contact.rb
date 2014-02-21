class Contact < ActiveRecord::Base
  attr_accessible :body, :email, :name, :subject


  # after_create :send_email
  
  # def send_email
  #   ContactMailer.contact(self).deliver
  # end
  
end
