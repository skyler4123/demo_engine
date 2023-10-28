# This migration comes from engine1 (originally 20231028051933)
class CreateEngine1Users < ActiveRecord::Migration[7.1]
  def change
    create_table :engine1_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
