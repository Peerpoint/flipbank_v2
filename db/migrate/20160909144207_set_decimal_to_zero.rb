class SetDecimalToZero < ActiveRecord::Migration
  def change
    change_column :loans, :gross_loan, :decimal, default: 0
    change_column :loans, :rehab_funds, :decimal, default: 0
    change_column :loans, :seller_con, :decimal, default: 0
    change_column :loans, :salesprice, :decimal, default: 0
    change_column :loans, :as_is_val, :decimal, default: 0
    change_column :loans, :arv, :decimal, default: 0
    change_column :loans, :ltc, :decimal, default: 0
    change_column :loans, :ltv_as, :decimal, default: 0
    change_column :loans, :ltv_eff, :decimal, default: 0
    change_column :loans, :verif_improv, :decimal, default: 0
    change_column :loans, :payoff, :decimal, default: 0
    change_column :loans, :purch_price, :decimal, default: 0
    change_column :loans, :appraised_val, :decimal, default: 0
    change_column :loans, :avg_price, :decimal, default: 0
  end
end
