class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
      if @quote.valid?
        MessageMailer.new_quote_message(@quote).deliver_now
        flash[:success] = "Your request was sent"
        redirect_to '/'
      else
        flash[:danger] = "There was a problem sending your request"
        redirect_to(:back)
      end
  end

  private

  def quote_params
    params.require(:quote).permit( :name, :email, :phone, :item, :comments )
  end
end
