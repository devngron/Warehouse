class DropWarehouses < ActiveRecord::Migration
  def up
  	drop_table :warehouses
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
