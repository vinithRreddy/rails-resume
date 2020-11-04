class CreateWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :work_experiences do |t|
      t.string :company
      t.date :start_date
      t.date :end_date
      t.string :position
      t.belongs_to :users, index: true, foreign_key: true

      t.timestamps  null: false
    end
  end
end
