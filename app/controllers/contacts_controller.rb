class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(quote_params)
      if @contact.valid?
        MessageMailer.new_contact_message(@contact).deliver_now
        flash[:success] = "Your request was sent"
        redirect_to '/'
      else
        flash[:danger] = "There was a problem sending your request"
        redirect_to(:back)
      end
  end

  private

  def quote_params
    params.require(:contact).permit( :name, :email, :phone, :item, :comments )
  end
end
