class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @a = params[:number]
    @a_square_root = @a.to_i**0.5

    render ("square_root.html.erb")
  end
end
