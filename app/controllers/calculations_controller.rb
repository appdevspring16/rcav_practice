class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def squares
    @number = params[:number].to_i
    @square_root = @number**0.5
    @square_root_round = @square_root.round(2)
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
    @monthly_payment = (@principal * (@monthly_int/(1-(1+@monthly_int) ** (@years* -12.00))))
    @monthly_payment_round = @monthly_payment.round(2)
  end

end
