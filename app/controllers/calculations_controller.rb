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

  def payment
    r = params[:int].to_f
    @int = r/100
    @nper = params[:nper].to_i
    @prin = params[:prin].to_f
    @payment = (@int*@prin*((1+@int)**@nper))/((1+@int)**@nper-1)
    render("payment.html.erb")
  end

end
