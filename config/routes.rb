Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:number_one", { :controller => "calculations", :action => "square_root" })

  get("/random/:number_one/:number_two", { :controller => "calculations", :action => "random" })

  get("/payment/:rate/:years/:principal", { :controller => "calculations", :action => "payment" })
end
