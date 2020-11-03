class AddUserIdToPersonaldetails < ActiveRecord::Migration[6.0]
  def change
    add_column :personaldetails, :user_id, :integer
  end
end
