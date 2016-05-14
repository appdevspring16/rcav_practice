Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

get("/square_root/:square", { :controller => "calculations", :action => "sqrt" })

get("/square/:sqrt", { :controller => "calculations", :action => "square"})

get("random/:min/:max", { :controller => "calculations", :action => "random"})

get("/payment/:rate/:years/:principal", { :controller => "calculations", :action => "loan_payment"})

end
