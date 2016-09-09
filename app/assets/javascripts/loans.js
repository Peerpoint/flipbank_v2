$(function(){
  $('input[type=radio][name="loan[rehab]"]').change(function() {
    $('#no_rehab').css("display", "none");
    $('#rehab_funds').css("display", "none");
    console.log($(this).val());
    var fieldToShow = $(this).val();
    if($(this).val() == 'true') {
      $('#rehab_funds').css("display", "block");
      $('#no_rehab').css("display", "none");
      $(".duplicate_gross_loan_amount").val($("#loan_gross_loan").val());
    }
    else {
      $('#rehab_funds').css("display", "none");
      $('#no_rehab').css("display", "block");
    }
  });
  $("#loan_gross_loan, #loan_rehab_funds").on("change", function(){
    var loan_gross_amount = parseInt($("#loan_gross_loan").val());
    var loan_rehab_funds = parseInt($("#loan_rehab_funds").val());
    $("#loan_total_amount_requested").val(loan_gross_amount + loan_rehab_funds);
    $(".duplicate_gross_loan_amount").val(loan_gross_amount);
  });

  $("#loan_salesprice").on("change", function(){
    var total_loan_req = $('#loan_loan_to_cost_eq').data('total-loan-req');
    if($(this).val() > 0) {
      $('#loan_loan_to_cost_eq').val((total_loan_req/$(this).val()).toFixed(2) + "%");
    }
  });



  $("#loan_as_is_val").on("change", function(){
    var total_loan_req = $('#loan_loan_to_value_as_is').data('total-loan-req');
    if($(this).val() > 0) {
      $('#loan_loan_to_value_as_is').val((total_loan_req/$(this).val()).toFixed(2) + "%");
    }
  });

  $("#loan_arv").on("change", function(){
    var total_loan_req = $('#loan_loan_to_value_effective').data('total-loan-req');
    if($(this).val() > 0) {
      $('#loan_loan_to_value_effective').val((total_loan_req/$(this).val()).toFixed(2) + "%");
    }
  });

  $('input[type=radio][name="loan[borrower]"]').change(function() {
    if($(this).val() == "true") {
      $("#individual").show();
      $("#entity").hide();
    }
    else {
     $("#individual").hide();
      $("#entity").show();
    }
  });


})