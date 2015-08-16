class NotificationsMailer < ApplicationMailer

  default :from => "contact@gaiusgroup.org"
  default :to => "jerry_lee92@hotmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Gaius Design Associates Contact Form] #{message.subject}")
  end

end
