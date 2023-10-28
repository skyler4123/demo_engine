require 'rails_helper'

module Engine1
  RSpec.describe Engine1::User, type: :model do
    # pending "add some examples to (or delete) #{__FILE__}"
    it "should create a car" do
      # debugger
      user = create(:user)
      expect(Engine1::User.count).to eq(1)
    end
  end
end