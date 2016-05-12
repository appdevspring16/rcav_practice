class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def sqr_rt
@number=params[:number].to_f
@sqr_rt=@number**0.5
render("square_root")
  end

def random_number
  @min=params[:min].to_f
  @max=params[:max].to_f
  @range= @max - @min
  @random=rand(@range) + @min
  render("random_number")
end
def payment
  @bp=params[:bp].to_f
  @yr=params[:yr].to_i
  @principal=params[:principal].to_f
  r = @bp/10000/12
  n = @yr*12
  @payment = (r*@principal)/(1-(1/(1+r)**n))
render("payment")
end
end
