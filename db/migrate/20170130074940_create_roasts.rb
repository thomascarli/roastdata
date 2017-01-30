class CreateRoasts < ActiveRecord::Migration[5.0]
  def change
    create_table :roasts do |t|
      t.string :roast_method
      t.datetime :date_of_roast
      t.string :bean_species
      t.integer :roast_time
      t.datetime :time_of_roast
      t.string :roast_profile
      t.integer :avg_temp_roast
      t.integer :raw_weight
      t.string :storage

      t.timestamps
    end
  end
end
