class ApplicationController < ActionController::Base
  def index
    render("index.html.erb")
  end

  def square_root
    @number = params[:number].to_f
    @number_squareroot = Math.sqrt(@number)
    render("square_root.html.erb")
  end

  def random_number
    @number = params[:number].to_f
    @number_random = sort_by { rand } 
    render("random_number.html.erb")
  end



  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
