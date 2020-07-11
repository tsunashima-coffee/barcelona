require 'rails_helper'

RSpec.describe "spots/index", type: :view do
  before(:each) do
    assign(:spots, [
      Spot.create!(
        user_id: 2,
        name: "Name",
        address: "Address",
        postal_code: "Postal Code",
        neer_station: "Neer Station"
      ),
      Spot.create!(
        user_id: 2,
        name: "Name",
        address: "Address",
        postal_code: "Postal Code",
        neer_station: "Neer Station"
      )
    ])
  end

  it "renders a list of spots" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Postal Code".to_s, count: 2
    assert_select "tr>td", text: "Neer Station".to_s, count: 2
  end
end
