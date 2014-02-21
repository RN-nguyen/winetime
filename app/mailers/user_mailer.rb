class UserMailer < ActionMailer::Base
  
  default from: "from@example.com"

  layout "email_template"



  def welcome_email(author)
    
    @author = Author.find(author)
    mail(to: 'onguyen89@gmail.com', subject: 'Welcome to My Site')
  end

end
