class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_create_form


  end

  def square_calc

    redirect_to("http://localhost:3000/square/#{params[:number]}")

  end

def square_show

  @result = params[:id].to_f**2

end

def square_root_create_form


end

def square_root_calc

  redirect_to("http://localhost:3000/square_root/#{params[:number]}")

end

def square_root_show

@result = sprintf("%.2f", params[:id].to_f**0.5)

end


def random_create_form


end

def random_calc

  redirect_to("http://localhost:3000/random/#{params[:min]}/#{params[:max]}")

end

def random_show

@result = rand(params[:min].to_i..params[:max].to_i)

end

def payment_create_form


end

def payment_calc

  redirect_to("http://localhost:3000/payment/#{params[:r]}/#{params[:n]}/#{params[:pv]}")

end

def payment_show

@result = sprintf("%.2f",((params[:r].to_f/(10000*12))*params[:pv].to_f)/(1-(1+(params[:r].to_f/(10000*12)))**(-12*params[:n].to_f)))

end

  end
