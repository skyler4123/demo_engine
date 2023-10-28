module Tsi
  class Season < ApplicationRecord
    has_many :sub_seasons
    has_many :cars
  end
end
