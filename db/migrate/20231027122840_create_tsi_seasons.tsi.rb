# This migration comes from tsi (originally 20231027111429)
class CreateTsiSeasons < ActiveRecord::Migration[7.1]
  def change
    create_table :tsi_seasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
