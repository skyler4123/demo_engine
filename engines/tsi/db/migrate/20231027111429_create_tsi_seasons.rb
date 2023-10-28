class CreateTsiSeasons < ActiveRecord::Migration[7.1]
  def change
    create_table :tsi_seasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
