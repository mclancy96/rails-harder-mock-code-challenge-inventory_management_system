class Product < ApplicationRecord
  has_many :inventory_transactions
  has_many :warehouses, through: :inventory_transactions
end
