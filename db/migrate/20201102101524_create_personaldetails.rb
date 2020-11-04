class CreatePersonaldetails < ActiveRecord::Migration[6.0]
  def change
    create_table :personaldetails do |t|
      t.string :first_name
      t.string :last_name
      t.string :gmail
      t.string :mobile_no
      t.string :city
      t.string :state
      t.string :pin_code
      t.belongs_to :users
      t.timestamps  null: false
    end
  end
end
