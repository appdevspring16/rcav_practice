class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root

    @first_number = params[:number_one].to_f

    @square = Math.sqrt(@first_number).round(2)

  end

  def random

    @first_number = params[:number_one].to_i
    @second_number = params[:number_two].to_i

    @random = rand(@first_number..@second_number)

  end

  def payment

    @rate = params[:rate].to_d.round(2)/100
    @years = params[:years].to_i
    @principal = params[:principal].to_i

    rate = @rate/(100*12)

    @payment = ((rate +(rate/(((1+rate)**(@years*12))-1))) * @principal).round(2)

  end

end
