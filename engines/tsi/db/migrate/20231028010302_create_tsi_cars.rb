class CreateTsiCars < ActiveRecord::Migration[7.1]
  def change
    create_table :tsi_cars do |t|
      t.string :name
      t.integer :season_id

      t.timestamps
    end
  end
end
