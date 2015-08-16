class NotificationsMailer < ApplicationMailer

  default :from => "root@gaiusgroup.org"
  default :to => "jerry_lee92@hotmail.com,yikailee@gmail.com,yanzarchi@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Gaius Design Associates Contact Form] #{message.subject}")
  end

end
