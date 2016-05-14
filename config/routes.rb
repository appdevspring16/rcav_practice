Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:num", { :controller => "calculations", :action => "square_root" })

  get("/square/:num", { :controller => "calculations", :action => "square" })

  get("/random/:num1/:num2", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:year/:principal", { :controller => "calculations", :action => "payment" })

end
