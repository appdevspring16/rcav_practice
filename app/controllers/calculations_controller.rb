class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def descriptive_statistics
      @number = params[:number].to_i
      @square = @number**2
      @square_root = Math.sqrt(@number)


      render("descriptive_statistics.html.erb")
    end
end
