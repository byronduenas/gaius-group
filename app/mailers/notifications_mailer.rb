class NotificationsMailer < ApplicationMailer

  default :from => "byronduenas@gmail.com"
  default :to => "byronduenas@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Gaius Design Associates Contact Form] #{message.subject}")
  end

end
