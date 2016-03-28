require 'rails_helper'

RSpec.describe "portfolios/index", type: :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
        :client_name => "Client Name",
        :picture1 => "Picture1",
        :picture2 => "Picture2",
        :description => "MyText"
      ),
      Portfolio.create!(
        :client_name => "Client Name",
        :picture1 => "Picture1",
        :picture2 => "Picture2",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", :text => "Client Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture1".to_s, :count => 2
    assert_select "tr>td", :text => "Picture2".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
