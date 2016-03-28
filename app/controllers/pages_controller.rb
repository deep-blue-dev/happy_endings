class PagesController < ApplicationController
  def about
  end

  def contact
    @contact = Contact.new
  end

  def home
    @category = Category.all.reject{ |category| category.try(:products).blank? }.sample
    @products = @category.try(:products)
    @quote = Quote.new
  end
end
