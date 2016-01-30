class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @products = Category.all.sample.products
  end
end
