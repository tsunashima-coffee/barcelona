require 'rails_helper'

RSpec.describe "spots/new", type: :view do
  before(:each) do
    assign(:spot, Spot.new(
      user_id: 1,
      name: "MyString",
      address: "MyString",
      postal_code: "MyString",
      neer_station: "MyString"
    ))
  end

  it "renders new spot form" do
    render

    assert_select "form[action=?][method=?]", spots_path, "post" do

      assert_select "input[name=?]", "spot[user_id]"

      assert_select "input[name=?]", "spot[name]"

      assert_select "input[name=?]", "spot[address]"

      assert_select "input[name=?]", "spot[postal_code]"

      assert_select "input[name=?]", "spot[neer_station]"
    end
  end
end
