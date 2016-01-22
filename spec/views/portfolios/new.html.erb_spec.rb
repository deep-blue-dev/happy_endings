require 'rails_helper'

RSpec.describe "portfolios/new", type: :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :client_name => "MyString",
      :picture1 => "MyString",
      :picture2 => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input#portfolio_client_name[name=?]", "portfolio[client_name]"

      assert_select "input#portfolio_picture1[name=?]", "portfolio[picture1]"

      assert_select "input#portfolio_picture2[name=?]", "portfolio[picture2]"

      assert_select "textarea#portfolio_description[name=?]", "portfolio[description]"
    end
  end
end
