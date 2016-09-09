class AddLoanToFields < ActiveRecord::Migration
  def change
    add_column :loans, :loan_to_cost_eq, :decimal, default: 0
    add_column :loans, :loan_to_value_as_is, :decimal, default: 0
    add_column :loans, :loan_to_value_effective, :decimal, default: 0
  end
end
