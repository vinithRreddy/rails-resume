class CreateAdditionalInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :additional_informations do |t|
      t.text :achievements
      t.text :hobbies
      t.text :strengths
      t.text :weaknesses
      t.belongs_to :users, index: true, foreign_key: true

      t.timestamps
    end
  end
end
