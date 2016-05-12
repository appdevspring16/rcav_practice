class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number]
    @square = @number.to_f * @number.to_f
    render ("square.html.erb")
  end

  def square_root
      @number = params[:number]
      @square_root = @number.to_f ** 0.5
        render ("square_root.html.erb")
    end

    def random_number
      @first = params[:first]
      @second = params[:second]
      @random_number = rand(@second.to_f - @first.to_f) +@first.to_f
      # (rand(@second.to_f) + @second.to_f) - (rand(@first.to_f) +@first.to_f)
      render ("random_number.html.erb")
    end

    def payment
      @apr = (params[:apr]).to_f * 0.0001
      r = (@apr.to_f) / 12
      @years = params[:years]
      n = @years.to_f * 12
      @principal = params[:principal]
      # @monthly_payment = ((@apr.to_f/12) * @principal.to_f)
      @monthly_payment = ((r * @principal.to_f) / (1- (1 + r)** (-n))).round(2)
      render ("payment.html.erb")
      end

end
