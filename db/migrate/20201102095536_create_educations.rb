class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :institute_name
      t.string :qualification
      t.string :specification
      t.date :start_date
      t.date :end_date
      t.decimal :marks
      t.belongs_to :personaldetails, index: true, foreign_key: true

      t.timestamps
    end
  end
end
