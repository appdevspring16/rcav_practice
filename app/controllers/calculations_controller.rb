class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square
	@number = params[:number].to_f
	@square = (@number**2).round(2)
end

def square_root
	@number = params[:number].to_f
	@square_root = (@number**0.5).round(2)
end

def random
	@minimum = params[:min].to_i
	@maximum = params[:max].to_i
	@random = rand(@minimum..@maximum)
end

def payment
	@apr = params[:int_rate].to_f
	@years = params[:number_of_years].to_i
	@principal = params[:total_principal].to_i
	@interest_rate = @apr/100
	@payment =(@principal*((@interest_rate/1200)*(1+(@interest_rate/1200))**(@years*12))/(((1+(@interest_rate/1200))**(@years*12))-1)).round(2)

end


end
