class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @number = params[:number].to_f
    @square = (@number)**(0.5)
    @square = @square.round(2)
  end
  def rand_num
    @lownum = params[:number1].to_i
    @highnum = params[:number2].to_i
    @random_num = rand(@lownum...@highnum)
  end
  def payment
    @interest_rate = (params[:interest_rate].to_f)/10
    @number_of_years = params[:number_of_years].to_f
    @principal_value = params[:principal_value].to_f
    num = (@interest_rate/12)*@principal_value
    den = (1-(1+@interest_rate)**(-12*@number_of_years))
    @monthly_payment =(num/den).round(2)
  end
end
