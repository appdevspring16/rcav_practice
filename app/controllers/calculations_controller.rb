class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end


  def square

  	@number = params[:number]
  	

  	@result = params[:number].to_f**2

  	render("square.html.erb")
  end



  def square_root

  	@number = params[:number]
  	

  	@result = Math.sqrt params[:number].to_f

  	render("square_root.html.erb")
  
  end 

  def random 
  	@min = params[:min].to_i
  	@max = params[:max].to_i

  	@result = rand(@min..@max)


  	render("random.html.erb")

  end

  def payment 
  	@term = params[:number_of_years].to_i
  	@amount = params[:principal_value].to_i
  	@intrate = params[:interest_rate].to_f/100
  	
  	r = @intrate/1200 
  	n = r * @amount
  	d = 1 - (1 + r)**-@term

  	@result = n / d 


  	render("payment.html.erb")

  end



end
