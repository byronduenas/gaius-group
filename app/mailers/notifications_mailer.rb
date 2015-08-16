class NotificationsMailer < ApplicationMailer

  default :from => "contact@gaiusgroup.org"
  default :to => "contact@gaiusgroup.org"

  def new_message(message)
    @message = message
    mail(:subject => "[Gaius Design Associates Contact Form] #{message.subject}")
  end

end
