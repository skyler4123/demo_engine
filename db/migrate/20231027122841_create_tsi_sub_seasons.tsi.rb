# This migration comes from tsi (originally 20231027122743)
class CreateTsiSubSeasons < ActiveRecord::Migration[7.1]
  def change
    create_table :tsi_sub_seasons do |t|
      t.string :name
      t.integer :season_id

      t.timestamps
    end
  end
end
