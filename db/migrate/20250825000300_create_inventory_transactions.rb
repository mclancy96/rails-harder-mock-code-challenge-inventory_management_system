class CreateInventoryTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :inventory_transactions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true
      t.integer :transaction_type, null: false
      t.integer :quantity, null: false
      t.datetime :transaction_date
      t.timestamps
    end
  end
end
