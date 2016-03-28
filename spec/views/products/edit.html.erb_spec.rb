require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :category => "MyString",
      :price => 1,
      :image_1 => "MyString",
      :image_2 => "MyString",
      :promo => false
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_category[name=?]", "product[category]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_image_1[name=?]", "product[image_1]"

      assert_select "input#product_image_2[name=?]", "product[image_2]"

      assert_select "input#product_promo[name=?]", "product[promo]"
    end
  end
end
