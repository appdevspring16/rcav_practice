class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root_new
  end

  def square_root_calculate

    @number = params[:the_number].to_f
    @root = @number**0.5
  end

  def square_new
  end

  def square_calculate
    @number = params[:the_number].to_f
    @square = @number**2
  end

  def random_new
  end

  def random_calculate
    @min = params[:the_min].to_f
    @max = params[:the_max].to_f
    @random = rand(@min..@max)
  end

  def payment_new
  end

  def payment_calculate

    @rate = params[:the_interest_rate].to_f
    @years = params[:the_number_of_years].to_i
    @value = params[:the_principal_value].to_f

    @r= @rate/100/12
    @n= @years*12
    @monthly_payment = ((@r*@value)*((1+@r)**@n))/(((1+@r)**@n)-1)

  end



end
