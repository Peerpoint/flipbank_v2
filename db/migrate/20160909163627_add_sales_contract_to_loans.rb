class AddSalesContractToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :sales_contract, :boolean
  end
end
