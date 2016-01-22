require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name",
      :category => "Category",
      :price => 1,
      :image_1 => "Image 1",
      :image_2 => "Image 2",
      :promo => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Image 1/)
    expect(rendered).to match(/Image 2/)
    expect(rendered).to match(/false/)
  end
end
