class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square
    @number = params[:id]
    @numberinteger = @number.to_i
    @square = @numberinteger * @numberinteger
    render("square.html.erb")

  end
  def square_root
    @number = params[:id]
    @numberinteger = @number.to_i
    @square_root = Math.sqrt (@numberinteger)
    render("square_root.html.erb")

  end
  def random

    @min = params[:min]
    @max = params[:max]
    @mininteger = @min.to_i
    @maxinteger = @max.to_i
    @random = @mininteger + Random.rand(@maxinteger-@mininteger+1)
    render("random.html.erb")

  end
  def payment
    @int = params[:int].to_f
    @year = params[:year].to_i
    @principal = params[:principal].to_i

    @n = 12 * @year

    @r = @int / 12 / 100 / 100

    @intpercentage = @int / 100

    @monthly_payment = (@r * @principal) / (1 - (( 1 + @r)) ** -@n)

    @mprounded = @monthly_payment.round(2)

    render("payment.html.erb")
  end
end
