require 'rails_helper'

RSpec.describe "campaigns/show", type: :view do
  before(:each) do
    @campaign = assign(:campaign, Campaign.create!(
      :address => "Address",
      :location => "Location",
      :keywords => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
  end
end
