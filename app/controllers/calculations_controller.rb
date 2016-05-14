class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    # num = params[:id]
    # @square = num.to_i*num.to_i
    @num = params[:id].to_i
    @square = @num**2
    # @square = Math.sqrt(num)
  end

  def square_root
    @num = params[:id].to_i
    # @sqrt = num**0.5
    n = Math.sqrt(@num)
    @sqrt = n.round(2)
  end

  def minmax
  @min = params[:min].to_i
  @max = params[:max].to_i

  # @rando = rand(@min...@max).to_i
  @rando = rand(@min..@max).to_i
  end

def payment
@apr = params[:rate].to_d/100
@years = params[:years].to_i
@principal = params[:prin].to_i

mrate = @apr/(12*100)
period = -@years*12
numerator = mrate*@principal
denominator = 1-(1+mrate)**period
@monthly_payment = numerator/denominator

end

end
