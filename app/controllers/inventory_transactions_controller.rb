class InventoryTransactionsController < ApplicationController
  def index
    @inventory_transactions = InventoryTransaction.all
  end
end
