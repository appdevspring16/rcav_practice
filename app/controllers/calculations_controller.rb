class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def loan_payment
#  @apr = params[:annual_percentage_rate].to_f
#  @years = params[:number_of_years].to_i
#  @principal = params[:principal_value].to_f

#  rate = @apr / 100 / 12
#  nper = @years * 12

#  @monthly_payment = (rate * @principal)/(1 - (1 + rate)**-nper)
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
