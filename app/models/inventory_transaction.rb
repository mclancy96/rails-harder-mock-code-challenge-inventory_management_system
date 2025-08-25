class InventoryTransaction < ApplicationRecord
  belongs_to :product
  belongs_to :warehouse
  enum transaction_type: { stock_in: 0, stock_out: 1, transfer: 2 }
end
