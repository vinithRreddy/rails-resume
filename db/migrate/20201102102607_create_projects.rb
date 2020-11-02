class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :technologies
      t.string :URL

      t.timestamps
    end
  end
end
