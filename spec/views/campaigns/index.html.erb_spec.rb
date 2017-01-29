require 'rails_helper'

RSpec.describe "campaigns/index", type: :view do
  before(:each) do
    assign(:campaigns, [
      Campaign.create!(
        :address => "Address",
        :location => "Location",
        :keywords => "MyText"
      ),
      Campaign.create!(
        :address => "Address",
        :location => "Location",
        :keywords => "MyText"
      )
    ])
  end

  it "renders a list of campaigns" do
    render
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
