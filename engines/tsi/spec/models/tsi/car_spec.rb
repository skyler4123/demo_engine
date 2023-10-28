require 'rails_helper'

module Tsi
  RSpec.describe Car, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"
    it "should create a car" do
      debugger
      car = create(:car)
      expect(Tsi::Car.count).to eq(1)
    end
  end
end
