class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end


  def square_root
@input=params[:user_input]

@r=Math.sqrt(@input.to_i)
@result=@r.round(2)

render("square_root.html.erb")
  end


def random
@min=params[:min]
@max=params[:max]

@random=rand(@min.to_i..@max.to_i)
  end

def payment
r=params[:rate].to_f
t=params[:period].to_i
pr=params[:principal].to_i
r_show=r/100
@r_show=r_show.round(1)
@t_show=t
@r=((r/100)/12)/100
@t=t*12
@p=pr
@interest=(1+@r)**@t

@result=(@r*@p*@interest)/(@interest-1)
@payment=@result.round(2)

end


end
