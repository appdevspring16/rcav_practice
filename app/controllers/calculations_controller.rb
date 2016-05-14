class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number      = params[:num].to_i
    @square_root = Math.sqrt(@number).round(2)
  end

  def square
    @number      = params[:num].to_i
    @square      = @number ** 2;
  end

  def random
    @number1     = params[:num1].to_i
    @number2     = params[:num2].to_i
    @random      = rand(@number1 + 1 .. @number2 - 1);
  end

  def payment
    @rate      = (params[:rate].to_i/100.0)
    @year      = params[:year].to_i
    @principal = params[:principal].to_i
    # formula = p * r * (1 + r)^n / ((1 + r)^n - 1)
    # monthly interest rate
    @r = (@rate/12)/100;
    # period in months
    @n = @year * 12;
    @one_plus_r_power_n = ( 1 + @r) ** @n;
    @monthly_payment = ( @principal * @r * @one_plus_r_power_n) / (@one_plus_r_power_n - 1);
    @payment = sprintf('%.2f', @monthly_payment)
  end

end
