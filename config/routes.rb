Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:number", { :controller => "calculations", :action => "square"})
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:first/:second", { :controller => "calculations", :action => "random_number" })
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "payment" })
end
