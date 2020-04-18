class RenameSkillMapToKitchen < ActiveRecord::Migration[5.1]
  def change
     rename_table :skill_maps, :kitchens
  end
end
