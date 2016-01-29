class AdminController < ApplicationController
  def home
    @portfolios = Portfolio.all
    @categories = Category.all
  end
end
