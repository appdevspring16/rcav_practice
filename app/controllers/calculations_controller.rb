class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end


  def sqrt
    @square = params[:square].to_f
    @sqrt = @square**0.5
    render("sqrt.html.erb")
  end

  def square
    @sqrt = params[:sqrt].to_f
    @square = @sqrt**2
    render("square.html.erb")
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = rand(@min...@max+1)

  end

  def loan_payment
    @apr = params[:rate].to_f/100
    rate = @apr/100/12
    @years = params[:years].to_i
    @principal = params[:principal].to_f

    nper = @years*12
    @monthly_payment = (rate*@principal)/(1-(1+rate)**(-1*nper))

    render("loan_payment.html.erb")
  end

end
