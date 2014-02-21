class ContactMailer < ActionMailer::Base
  default from: 'helloworld@blog.com'

  def sendout(contact)
    @contact = Contact.find(contact)
    mail(to: 'onguyen89@gmail.com', subect: '#{@contact.name} | #{@contact.subject}')
  end

end
