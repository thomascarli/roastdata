class RenameRoastTimeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :roasts, :roast_time, :roast_duration
    add_column :brews, :date_of_brew, :datetime
  end
end
