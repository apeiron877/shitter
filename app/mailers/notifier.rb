# app/mailer/notifier.rb
class Notifier < ActionMailer::Base

  def support_notification(sender)
    @sender = sender
    mail(:to => "shitterr@gmail.com",
         :from => sender.email,
         :subject => "New #{sender.support_type}")
 end
end
