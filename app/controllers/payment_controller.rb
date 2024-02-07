class PaymentController < ApplicationController
  def payment_new
    render({ :template => "pages_template/payment_new"})
  end

  def payment_results
    @rate = ((params["apr"].to_f)/100)/12
    @loan_term = (params["years"].to_i) * 12
    @present_value = params["principal"].to_f

    @numerator = @rate * @present_value
    @denominator = 1 - ((1 + @rate) ** (-1*@loan_term))

    @apr_display = params["apr"].to_f.to_fs(:percentage, {:precision => 4})
    @years_display = params["years"]
    @principal_display = params["principal"].to_f.to_fs(:currency)
    @payment = (@numerator / @denominator).to_fs(:currency)
    render({ :template => "pages_template/payment_results"})
  end
end
