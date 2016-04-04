class CreateTabflowers < ActiveRecord::Migration
  def change
    create_table :tabflowers do |t|
      t.string :name
      t.string :mean
      t.float :origin_price
      t.string :img
      t.string :detail
      t.string :material
      t.string :packaging
      t.float :current_price

      t.timestamps null: false
    end
  end
end
