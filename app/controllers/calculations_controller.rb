class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root_new
  end

  def square_root_calculate

    @number = params[:the_number].to_i
    @root = @number.to_i**0.5
  end

  def square_new
  end

  def square_calculate

    @number = params[:the_number].to_i
    @square = @number.to_i**2
  end

  def random_new
  end

  def random_calculate
    @min = params[:the_min].to_i
    @max = params[:the_max].to_i
    @random = rand(@min..@max)


  end



end
