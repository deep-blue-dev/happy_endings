class MessageMailer < ApplicationMailer
  default from: "happyendings015@gmail.com"

  def new_quote_message(message)
    @quote_message = message
    mail to: "happyendings015@gmail.com", subject: "#{@quote_message.name} requested a quote"
  end

  def new_contact_message(message)
    @contact_message = message
    mail to: "happyendings015@gmail.com", subject: "#{@contact_message.name} contacted you"
  end
end
