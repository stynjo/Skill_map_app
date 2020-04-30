class CreateHalls < ActiveRecord::Migration[5.1]
  def change
    create_table :halls do |t|
      t.integer :hall
      t.integer :server
      t.integer :entrance
      t.integer :washer
      t.integer :reader
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
