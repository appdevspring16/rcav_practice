class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def loan_payment
  @apr = params[:int].to_f
  @years = params[:period].to_i
  @principal = params[:amount].to_f

  monthly_rate = @apr / 100 / 12 / 100
  nper = @years * 12

  @monthly_payment = (monthly_rate * @principal)/(1 - (1 + monthly_rate)**-nper)

  render("loan_payment.html.erb")
end

def square_root
  @num = params[:number].to_i
  @sq_root =  Math.sqrt(@num)
  @round_root = @sq_root.round(2)
  render("square_root.html.erb")
end

def random_number
  @minimum = params[:min].to_i
  @maximum = params[:max].to_i
  @random = rand(@minimum..@maximum).to_i
  render("random_number.html.erb")
end

end
