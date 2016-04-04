class CreateTabusers < ActiveRecord::Migration
  def change
    create_table :tabusers do |t|
      t.string :name
      t.string :password
      t.string :true_name
      t.string :address
      t.string :code
      t.string :phone
      t.string :email
      t.string :address_type

      t.timestamps null: false
    end
  end
end
