class AddPercentToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :level, :string
  end
end
