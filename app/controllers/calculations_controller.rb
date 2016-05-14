class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square_root
  @number = params[:number]
  @result = @number.to_i**0.5

  render("square_root.html.erb")
end

end
