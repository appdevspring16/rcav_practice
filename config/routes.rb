Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/index", { :controller => "calculations", :action => "index" })

#square_root
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

  #random_number
    get("/random/:number/:number", { :controller => "calculations", :action => "random_number" })



end
