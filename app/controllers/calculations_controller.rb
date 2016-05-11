class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square
@NUMBER =  params[:NUMBER].to_i

@a = @NUMBER**2
end

def square_root
@NUMBER =  params[:NUMBER].to_f
@a = @NUMBER**0.5
end

def random
@MIN =  params[:MIN].to_i
@MAX = params[:MAX].to_i
@a = rand(@MIN..@MAX)
end

def payment
  @a = params[:INTEREST_RATE].to_f/10000/12
  @b = params[:NUMBER_OF_YEARS].to_f*12
  @c = params[:PRINCIPAL_VALUE].to_f

@result = (@c*   (@a*((1+@a)**@b))  /     ((1+@a)**@b-1))


end




end





# The monthly loan payment, given an annual interest rate in basis points, or hundredths of a percent, a number of years, and a principal amount, lives at the URL /payment/INTEREST_RATE/NUMBER_OF_YEARS/PRINCIPAL_VALUE
