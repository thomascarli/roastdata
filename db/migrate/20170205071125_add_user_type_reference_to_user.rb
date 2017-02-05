class AddUserTypeReferenceToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :user_type
  end
end
