Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square" })
  get("/random/:number1/:number2", { :controller => "calculations", :action => "rand_num" })
  get("/payment/:interest_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "payment" })
end
