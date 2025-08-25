class Warehouse < ApplicationRecord
  has_many :inventory_transactions
  has_many :products, through: :inventory_transactions
end
