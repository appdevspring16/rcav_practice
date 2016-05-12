class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number]
    @number_squared = @number.to_i**2
    render("square.html.erb")
  end

  def square_root
    @number = params[:number]
    @number_sqrt = @number.to_i**0.5
    render("square_root.html.erb")
  end

  def random
    @min = params[:min]
    @max = params[:max]
    range = (@min..@max).to_a
    @random_n = range.sample
  end

  

end
