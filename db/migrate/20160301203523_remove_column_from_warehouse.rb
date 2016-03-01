class RemoveColumnFromWarehouse < ActiveRecord::Migration
  def change
    remove_column :warehouses, :price, :decimal
  end
end
