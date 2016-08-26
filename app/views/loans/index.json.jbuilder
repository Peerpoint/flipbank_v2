json.array!(@loans) do |loan|
  json.extract! loan, :id, :trans_type, :gross_loan, :loan_term, :closing_date, :rehab, :rehab_funds, :coll_address, :prop_type, :occupy, :contract_exp, :seller_con, :salesprice, :as_is_val, :arv, :ltc, :ltv_as, :ltv_eff, :purch_date, :verif_improv, :payoff, :lender_name, :purch_price, :appraised_val, :borrower, :fname, :lname, :hemail, :hphone, :home_add, :citizen, :credit_score, :bk, :sixty_days, :foreclosure, :last_fc_ss, :entity, :bizname, :bizadd, :bizemail, :bizphone, :purchsixmo, :purchtwelvemo, :purchlife, :avg_price, :dob, :ssn, :ein
  json.url loan_url(loan, format: :json)
end
