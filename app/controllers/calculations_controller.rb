class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number = params[:id].to_i
    @number_root = @number.to_f**(0.5)
  end

  def random_number
    @first_number = params[:first_number].to_i
    @second_number = params[:second_number].to_i
    @random_number = rand(@first_number..@second_number)
  end

  def payment_calculator
    @int_rate_bps = params[:int_rate_bps].to_f
    @int = (@int_rate_bps/100)
    @loan_term_yrs = params[:loan_term_yrs].to_i
    @loan_amount = params[:loan_amount].to_f
    @monthly_payment = (@int*@loan_amount*((1+@int)**@loan_term_yrs))/((1+@int)**@loan_term_yrs-1)
  end

end
