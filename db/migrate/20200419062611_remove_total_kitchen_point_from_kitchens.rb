class RemoveTotalKitchenPointFromKitchens < ActiveRecord::Migration[5.1]
  def change
    remove_column :kitchens, :total_kitchen_point, :integer
  end
end
