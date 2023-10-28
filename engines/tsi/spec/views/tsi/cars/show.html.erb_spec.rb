require 'rails_helper'

RSpec.describe "cars/show", type: :view do
  before(:each) do
    assign(:car, Car.create!(
      name: "Name",
      season_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
