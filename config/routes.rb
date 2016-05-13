Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square/:number", { :controller => "calculations", :action => "square" })

  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

  get("/random/:number1/:number2", { :controller => "calculations", :action => "random_number" })

  get("/payment/:apr/:term/:principal", { :controller => "calculations", :action => "payments" })
end
