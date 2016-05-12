class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number].to_f
    @square = @number**2

    render("square.html.erb")
  end

  def square_root
    @number = params[:number].to_f
    @square_root = @number**(0.5)
    render("square_root.html.erb")
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i

    @random = rand(@min..@max)
    render("random.html.erb")
  end

  def payment
    @years = params[:number_of_years].to_i
    months = @years * 12
    @apr = params[:interest_rate]
    @apr = @apr.to_f / 100
    rate = @apr / 12 / 100
    @principal = params[:principal_value].to_i

    @monthly_payment = (rate * @principal * ((1 + rate) ** months)) / (((1 + rate) ** months) - 1)

    render("payment.html.erb")
  end
end
