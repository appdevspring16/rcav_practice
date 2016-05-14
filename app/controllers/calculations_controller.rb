class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number = params[:ID]

    render("square_root.html.erb")
  end

  def square
    @number = params[:id]

    render("square.html.erb")
  end

  def random
    @number_min = params[:min]
    @number_max = params[:max]

    render("random.html.erb")
  end


  def payment_form
    #code
  end

  def calculate
    @interest_integer = (params[:interest].to_f*100).to_i
    redirect_to("/payment/#{@interest_integer}/#{params[:years]}/#{params[:principal]}")
  end

  #<%# @payment.interest %>/<%# @payment.years %>/<%# @payment.principal %>
  def payment
    @payment_interest = params[:interest].to_f/100
    @payment_years = params[:years].to_i
    @payment_principal = params[:principal].to_i

    @interest_monthly = (@payment_interest/100/12)
    @interest_monthly_compounded = ((1+(@interest_monthly))**(@payment_years*12))

    @monthly_payment = @payment_principal*(@interest_monthly)*(@interest_monthly_compounded)/(@interest_monthly_compounded-1)

    render("payment.html.erb")
  end

# Original payment method
  # def payment
  #   @interest_rate = params[:interest_rate].to_f
  #   @years = params[:number_of_years].to_i
  #   @principal = params[:principal_value].to_i
  #
  #   @interest_monthly = (@interest_rate.to_f/10000/12)
  #
  #   # ((1+r/12)^(years*12))
  #   @interest_monthly_compounded = ((1+(@interest_monthly.to_f))**(@years.to_i*12))
  #
  #   @monthly_payment = @principal*(@interest_monthly)*(@interest_monthly_compounded)/(@interest_monthly_compounded-1)
  #
  #   render("payment.html.erb")
  # end

end
