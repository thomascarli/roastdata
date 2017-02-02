class AddUseridToRoasts < ActiveRecord::Migration[5.0]
  def change
    add_column :roasts, :user_id, :integer
  end
end
