class AddDescriptionAndLocationToWorkExperiences < ActiveRecord::Migration[6.0]
  def change
    add_column :work_experiences, :description, :text
    add_column :work_experiences, :location, :string
  end
end
