require 'rails_helper'

RSpec.describe "portfolios/edit", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :client_name => "MyString",
      :picture1 => "MyString",
      :picture2 => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do

      assert_select "input#portfolio_client_name[name=?]", "portfolio[client_name]"

      assert_select "input#portfolio_picture1[name=?]", "portfolio[picture1]"

      assert_select "input#portfolio_picture2[name=?]", "portfolio[picture2]"

      assert_select "textarea#portfolio_description[name=?]", "portfolio[description]"
    end
  end
end
