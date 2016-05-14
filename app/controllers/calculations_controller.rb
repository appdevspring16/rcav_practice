class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end


def sqrt
  @square = params[:square].to_f
  @sqrt = @square**0.5
  render("sqrt.html.erb")
end

end
