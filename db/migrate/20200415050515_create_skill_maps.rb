class CreateSkillMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_maps do |t|
      t.integer :conro
      t.integer :oven
      t.integer :flier
      t.integer :drink
      t.integer :salad
      t.integer :total_kitchen_point
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
