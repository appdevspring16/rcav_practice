class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number_to_square = Number.find(params[:number])
    @number_to_square.square
  end

def square_root
  @num = params[:number].to_i
  @sq_root =  Math.sqrt(@num)
  @round_root = @sq_root.round(2)
  render("square_root.html.erb")
 end

 def random_number
   @minimum = params[:min].to_i
   @maximum = params[:max].to_i
   @random = rand(@minimum..@maximum).to_i
   render("random_number.html.erb")
 end
end
