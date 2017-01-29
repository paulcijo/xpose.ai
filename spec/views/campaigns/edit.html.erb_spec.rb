require 'rails_helper'

RSpec.describe "campaigns/edit", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :address => "MyString",
      :location => "MyString",
      :keywords => "MyText"
    ))
  end

  it "renders the edit campaign form" do
    render

    assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do

      assert_select "input#campaign_address[name=?]", "campaign[address]"

      assert_select "input#campaign_location[name=?]", "campaign[location]"

      assert_select "textarea#campaign_keywords[name=?]", "campaign[keywords]"
    end
  end
end
