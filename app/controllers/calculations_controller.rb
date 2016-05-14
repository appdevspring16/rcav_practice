class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @a = params[:number]
    @a_square_root = @a.to_i**0.5

    render ("square_root.html.erb")
  end
  def random

    @min = params[:min_number]
    @max = params[:max_number]
    @min_number = @min.to_i
    @max_number = @max.to_i
    @random = rand(@max_number-@min_number) + 1

    render ("random.html.erb")
  end

end
