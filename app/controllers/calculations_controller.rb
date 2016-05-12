class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number = params[:number].to_f
    @sqrt = (@number ** 0.5).round(2)
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @number = rand(@min..@max)
  end

  def payment
    @apr = params[:apr].to_f/100
    @years = params[:years].to_i
    @principal = params[:principal].to_i

    @num = (@apr/100/12) * @principal
    @denom = 1-((1+(@apr/100/12))**(-1*@years*12))
    @monthly_payment = @num/@denom
  end
end
