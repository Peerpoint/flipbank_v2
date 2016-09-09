class AddTotalAmountRequestedToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :total_amount_requested, :decimal, default: 0
  end
end
