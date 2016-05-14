class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @number = params["number"].to_i
    render("square.html.erb")
  end
  def sqrt
    @number = params["number"].to_f
    render("sqrt.html.erb")
  end
  def random
    @number1 = params["number1"].to_i
    @number2 = params["number2"].to_i
    @numberrand = rand(@number1..@number2)
    render("random.html.erb")
  end
  def payment
    @rate = params["rate"].to_i
    @mrate = @rate.to_f/1200
    @years = params["yrs"].to_i
    @nper = @years*-12
    @value = params["value"]
    @num = (@value.to_f*@mrate.to_f/100)
    @den = 1-((1+@mrate.to_f/100)**(@nper))
    @payment = (@num/@den).round(2)
    render("payment.html.erb")
  end
end
