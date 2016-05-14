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

end
