class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :technologies
      t.string :URL
      t.belongs_to :users, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
