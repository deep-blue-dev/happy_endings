class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @category = Category.all.sample
  end
end
