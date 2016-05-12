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
    @apr = params[:interest_rate]
    render("payment.html.erb")
  end
end
