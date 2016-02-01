class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @category = Category.all.reject{ |category| category.try(:products).blank? }.sample
    @products = @category.try(:products)
  end
end
