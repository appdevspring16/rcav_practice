class CalculationsController < ApplicationController

  def instructions
    render("instructions.html.erb")
  end

  def square
    #The square of a particular NUMBER
    @number = params[:number].to_i
  end

  def square_root
    #The square root of a particular NUMBER
    @number = params[:number].to_i
    @square_root = Math.sqrt(@number)
  end

  def random
    #A random number within a range, MIN to MAX
    @min = params[:min].to_i
    @max = params[:max].to_i
    @rand = rand(@max - @min) + @min
  end

  def loan_pmt
    #The monthly loan payment, given an annual interest rate in basis points, or hundredths of a percent, a number of years, and a principal amount
    #410 -> .041
    @int_rate = params[:int_rate].to_f
    @percent_int_rate = @int_rate / 10000.to_f
    @monthly_int_rate = @percent_int_rate / 12.to_i
    @years = params[:years].to_i
    @principal = params[:principal].to_i
    @monthly_pmt = '%.2f' % (@principal * ( @monthly_int_rate / (1 - (1 + @monthly_int_rate)**-@years))).round(2)
  end

end
