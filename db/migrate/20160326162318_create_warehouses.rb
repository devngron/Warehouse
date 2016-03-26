class CreateWarehouses < ActiveRecord::Migration
  def change
    create_table :warehouses do |t|
      t.integer :product_id
      t.decimal :price
      t.integer :qnty
      t.integer :supplier_id
      t.text :description

      t.timestamps null: false
    end
  end
end
