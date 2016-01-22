require 'rails_helper'

RSpec.describe "portfolios/show", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :client_name => "Client Name",
      :picture1 => "Picture1",
      :picture2 => "Picture2",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Client Name/)
    expect(rendered).to match(/Picture1/)
    expect(rendered).to match(/Picture2/)
    expect(rendered).to match(/MyText/)
  end
end
