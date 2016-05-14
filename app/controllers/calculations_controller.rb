class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square_root
  @number = params[:number]
  @result = @number.to_i**0.5

  render("square_root.html.erb")
end

def random_number
  @first_number = params[:first_number]
  @second_number = params[:second_number]
@result = rand(@first_number.to_i..@second_number.to_i)


render("random_number.html.erb")end


end
