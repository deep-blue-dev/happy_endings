require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :category => "Category",
        :price => 1,
        :image_1 => "Image 1",
        :image_2 => "Image 2",
        :promo => false
      ),
      Product.create!(
        :name => "Name",
        :category => "Category",
        :price => 1,
        :image_1 => "Image 1",
        :image_2 => "Image 2",
        :promo => false
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Image 1".to_s, :count => 2
    assert_select "tr>td", :text => "Image 2".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
