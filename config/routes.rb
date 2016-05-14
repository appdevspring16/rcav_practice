Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:num", { :controller => "calculations", :action => "square_root" })

  get("/square/:num", { :controller => "calculations", :action => "square" })

end
