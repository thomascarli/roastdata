class CreateBrews < ActiveRecord::Migration[5.0]
  def change
    create_table :brews do |t|
      t.integer :roast_id
      t.string :brew_method
      t.datetime :time_of_brew
      t.integer :qty_of_beans
      t.integer :bitterness
      t.integer :complexity
      t.integer :acidity
      t.integer :overall
      t.string :texture
      t.text :comments
      t.integer :user_id

      t.timestamps
    end
  end
end
