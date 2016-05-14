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
end
