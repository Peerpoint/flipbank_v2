require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { appraised_val: @loan.appraised_val, arv: @loan.arv, as_is_val: @loan.as_is_val, avg_price: @loan.avg_price, bizadd: @loan.bizadd, bizemail: @loan.bizemail, bizname: @loan.bizname, bizphone: @loan.bizphone, bk: @loan.bk, borrower: @loan.borrower, citizen: @loan.citizen, closing_date: @loan.closing_date, coll_address: @loan.coll_address, contract_exp: @loan.contract_exp, credit_score: @loan.credit_score, dob: @loan.dob, ein: @loan.ein, entity: @loan.entity, fname: @loan.fname, foreclosure: @loan.foreclosure, gross_loan: @loan.gross_loan, hemail: @loan.hemail, home_add: @loan.home_add, hphone: @loan.hphone, last_fc_ss: @loan.last_fc_ss, lender_name: @loan.lender_name, lname: @loan.lname, loan_term: @loan.loan_term, ltc: @loan.ltc, ltv_as: @loan.ltv_as, ltv_eff: @loan.ltv_eff, occupy: @loan.occupy, payoff: @loan.payoff, prop_type: @loan.prop_type, purch_date: @loan.purch_date, purch_price: @loan.purch_price, purchlife: @loan.purchlife, purchsixmo: @loan.purchsixmo, purchtwelvemo: @loan.purchtwelvemo, rehab: @loan.rehab, rehab_funds: @loan.rehab_funds, salesprice: @loan.salesprice, seller_con: @loan.seller_con, sixty_days: @loan.sixty_days, ssn: @loan.ssn, trans_type: @loan.trans_type, verif_improv: @loan.verif_improv }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { appraised_val: @loan.appraised_val, arv: @loan.arv, as_is_val: @loan.as_is_val, avg_price: @loan.avg_price, bizadd: @loan.bizadd, bizemail: @loan.bizemail, bizname: @loan.bizname, bizphone: @loan.bizphone, bk: @loan.bk, borrower: @loan.borrower, citizen: @loan.citizen, closing_date: @loan.closing_date, coll_address: @loan.coll_address, contract_exp: @loan.contract_exp, credit_score: @loan.credit_score, dob: @loan.dob, ein: @loan.ein, entity: @loan.entity, fname: @loan.fname, foreclosure: @loan.foreclosure, gross_loan: @loan.gross_loan, hemail: @loan.hemail, home_add: @loan.home_add, hphone: @loan.hphone, last_fc_ss: @loan.last_fc_ss, lender_name: @loan.lender_name, lname: @loan.lname, loan_term: @loan.loan_term, ltc: @loan.ltc, ltv_as: @loan.ltv_as, ltv_eff: @loan.ltv_eff, occupy: @loan.occupy, payoff: @loan.payoff, prop_type: @loan.prop_type, purch_date: @loan.purch_date, purch_price: @loan.purch_price, purchlife: @loan.purchlife, purchsixmo: @loan.purchsixmo, purchtwelvemo: @loan.purchtwelvemo, rehab: @loan.rehab, rehab_funds: @loan.rehab_funds, salesprice: @loan.salesprice, seller_con: @loan.seller_con, sixty_days: @loan.sixty_days, ssn: @loan.ssn, trans_type: @loan.trans_type, verif_improv: @loan.verif_improv }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
