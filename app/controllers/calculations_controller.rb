class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @square = params[:id].to_i
    @root = @square**0.5
    render("square_root.html.erb")
  end

  def square
    @number = params[:id].to_i
    @square = @number**2
    render("square.html.erb")
  end

  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @random = rand(@min..@max)
    render("random.html.erb")
  end
end
