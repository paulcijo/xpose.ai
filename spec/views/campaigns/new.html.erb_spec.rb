require 'rails_helper'

RSpec.describe "campaigns/new", type: :view do
  before(:each) do
    assign(:campaign, Campaign.new(
      :address => "MyString",
      :location => "MyString",
      :keywords => "MyText"
    ))
  end

  it "renders new campaign form" do
    render

    assert_select "form[action=?][method=?]", campaigns_path, "post" do

      assert_select "input#campaign_address[name=?]", "campaign[address]"

      assert_select "input#campaign_location[name=?]", "campaign[location]"

      assert_select "textarea#campaign_keywords[name=?]", "campaign[keywords]"
    end
  end
end
