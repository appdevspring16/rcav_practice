Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:number", { :controller => "calculations", :action => "square_root"})
  get("/random/:min/:max", { :controller => "calculations", :action => "random"})
  get("/payment/:apr/:years/:principal", { :controller => "calculations", :action => "payment"})

end
