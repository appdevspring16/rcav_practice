Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

  get("/random/:number1/:number2", { :controller => "calculations", :action => "random_number" })
end
