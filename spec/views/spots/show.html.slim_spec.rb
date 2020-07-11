require 'rails_helper'

RSpec.describe "spots/show", type: :view do
  before(:each) do
    @spot = assign(:spot, Spot.create!(
      user_id: 2,
      name: "Name",
      address: "Address",
      postal_code: "Postal Code",
      neer_station: "Neer Station"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Neer Station/)
  end
end
