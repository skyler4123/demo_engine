require 'rails_helper'

RSpec.describe "cars/edit", type: :view do
  let(:car) {
    Car.create!(
      name: "MyString",
      season_id: 1
    )
  }

  before(:each) do
    assign(:car, car)
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(car), "post" do

      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[season_id]"
    end
  end
end
