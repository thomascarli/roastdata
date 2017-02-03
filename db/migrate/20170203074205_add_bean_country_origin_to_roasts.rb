class AddBeanCountryOriginToRoasts < ActiveRecord::Migration[5.0]
  def change
    add_column :roasts, :bean_country_origin, :string
    add_column :roasts, :bean_varietal_name, :string
  end
end
