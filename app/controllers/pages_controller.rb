class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @category = Category.all.reject{ |category| category.products.blank? }.sample
    @products = @category.products
  end
end
