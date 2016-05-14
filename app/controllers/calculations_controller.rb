class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

def square_root
  @number = params[:number]
  @result = @number.to_i**0.5

  render("square_root.html.erb")
end

def random_number
  @first_number = params[:first_number]
  @second_number = params[:second_number]
@result = rand(@first_number.to_i..@second_number.to_i)


render("random_number.html.erb")end

def payment
  @first_number = params[:first_number]
  @second_number = params[:second_number]
  @third_number = params[:third_number]

  @result = rand(@first_number.to_i..@second_number.to_i)

  @apr = params[:apr].to_f
  @years = params[:years].to_i
  @principal = params[:principal].to_i

  @monthly_payment = (((@apr*0.01) / 100 / 12) * @principal) / (1 - ((1 + ((@apr*0.01) / 100 / 12))**(-@years * 12)))


render("payment.html.erb")
end


end
