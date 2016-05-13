class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @number = params[:id].to_i
    @number_root = @number.to_f**(0.5)
  end

  def square_root
    @number = params[:id].to_i
    @number_root = @number.to_f**(0.5)
  end

end
