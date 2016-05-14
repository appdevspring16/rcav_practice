class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def squares
    @number = params[:number].to_i
    @square_root = @number**0.5
  end

  def random
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    @rand = rand(@number1..@number2)
  end

  def loan
    @intrest = params[:intrest].to_f/100
    @years = params[:years].to_i
    @principal = params[:principal].to_i
    @monthly_int = @intrest/(12*100)
    @monthly_payment = (@principal * (@monthly_int/(1-(1+@monthly_int) ** (@years* -12.00))))  end

end
