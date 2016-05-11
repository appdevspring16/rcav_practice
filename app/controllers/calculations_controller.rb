class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def index
    @number = params[:number].to_i
  end

  def show
    @number = params[:number].to_i
    @square = @number**2
  end

  def create_row
    @number = params[:number].to_i
    # @square = @number**2

    redirect_to("/square/#{@number}")
  end



end
