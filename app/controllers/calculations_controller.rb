class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end
  def calculator
  end
  def no_form
     @the_square = params[:the_square].to_i

     @sr=Math.sqrt(@the_square)
     render("square_root.html.erb")
   end

   def square_root
     @the_square = params[:user_number].to_i
     @sr=Math.sqrt(@the_square)
   end
   def no_form1
      @square = params[:square].to_i

      @to_square=@square**2
      render("square.html.erb")
    end

    def square
      @square = params[:user_number1].to_i
      @to_square=@square**2
    end
    def no_form_rand
         # User inputs two variables
         @start = params[:start].to_i
         @end = params[:end].to_i
         @randnum = rand(@start..@end).to_i
         # the calculator puts a number between those two
         render("random.html.erb")
       end

       def randrange
         # User inputs two variables
         @start = params[:user_start].to_i
         @end = params[:user_end].to_i
         @randnum = rand(@start..@end).to_i
         # the calculator puts a number between those two
         render("random.html.erb")
       end


       def pmt

         @apr=params[:points].to_f
         @years=params[:years].to_i
         @princ=params[:principal].to_f

         @display_i=@apr/100

         @i=@apr/10000/12
         n = @years*12
         @payment = ((@i*@princ)/(1-(1/(1+@i)**n))).round(0)

         render("payment.html.erb")

       end
       def pmt_form

         @apr1=params[:points1].to_f
         @years=params[:years1].to_i
         @princ=params[:principal1].to_f

         @display_i=@apr1

         @i=@apr1/100/12
         n = @years*12
         @payment = ((@i*@princ)/(1-(1/(1+@i)**n))).round(0)

         render("payment.html.erb")

       end
 end
