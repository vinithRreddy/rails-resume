class AddPercentToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :percent, :integer
  end
end
