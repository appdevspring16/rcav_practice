Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })
  get("/random/:min_number/:max_number", { :controller => "calculations", :action => "random" })
end
