class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.string :product
      t.decimal :price
      t.integer :qnty

      t.timestamps null: false
    end
  end
end
