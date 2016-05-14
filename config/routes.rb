Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:first_number/:second_number", { :controller => "calculations", :action => "random_number" })
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/", { :controller => "calculations", :action => "instructions" })

end
