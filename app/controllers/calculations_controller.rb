class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @num = params[:number]
    @square = @num.to_i**2

  end

  def square_root
    @num = params[:number]
    @square_root = Math.sqrt(@num.to_i)

  end

  def random_number
    @beg = params[:number1]
    @end = params[:number2]
    @rand = @beg.to_i + Random.rand((@end.to_i-@beg.to_i)+1)
  end

  def payments
    @term = params[:term].to_f
    @principal = params[:principal].to_f
    @apr = params[:apr].to_f/100
    @mpr = (@apr/12)/100
    #@monthly_pay = @apr
    @monthly_pay = (@mpr*@principal * (1+@mpr)**(@term*12)) / ((1+@mpr)**(@term*12) - 1)
  end
end
