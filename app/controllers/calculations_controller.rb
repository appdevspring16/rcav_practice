class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def square_root
    @sroot = params[:id].to_f
    @srt = Math.sqrt(@sroot)
  end
  def square
    @sroot = params[:id].to_f
    @srt = @sroot*@sroot
  end
  def random
    @min = params[:min].to_i
    @max = params[:max].to_i
    @rand = (@min..@max).to_a.sample
  end
  def payment
    @rate = params[:rate].to_f/100
    @term = params[:term].to_i
    @bal = params[:bal].to_i
    @mon_int = @rate/1200
    @monthly_payment = (@bal * (@mon_int/(1-(1+@mon_int)**(@term*12*(-1))))).round(2)

  end
end
