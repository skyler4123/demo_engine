FactoryBot.define do
  factory :car, class: "Tsi::Car" do
    name { "MyString" }
    season_id { 1 }
  end
end
