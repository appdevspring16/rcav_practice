class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @num = params[:number]
    @square_root = Math.sqrt(@num.to_i)

  end

  def random_number
    @beg = params[:number1]
    @end = params[:number2]
    @rand = @beg.to_i + Random.rand((@end.to_i-@beg.to_i)+1)
  end
end
