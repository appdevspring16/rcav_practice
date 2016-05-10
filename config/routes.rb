Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/instructions", { :controller => "calculations", :action => "instructions" })
  get("/square", { :controller => "calculations", :action => "square_create_form" })
  get("/square/submit", { :controller => "calculations", :action => "square_calc" })
  get("/square/:id", { :controller => "calculations", :action => "square_show" })

  get("/square_root", { :controller => "calculations", :action => "square_root_create_form" })
  get("/square_root/submit", { :controller => "calculations", :action => "square_root_calc" })
  get("/square_root/:id", { :controller => "calculations", :action => "square_root_show" })

  get("/random", { :controller => "calculations", :action => "random_create_form" })
  get("/random/submit", { :controller => "calculations", :action => "random_calc" })
  get("/random/:min/:max", { :controller => "calculations", :action => "random_show" })

  get("/payment", { :controller => "calculations", :action => "payment_create_form" })
  get("/payment/submit", { :controller => "calculations", :action => "payment_calc" })
  get("/payment/:r/:n/:pv", { :controller => "calculations", :action => "payment_show" })






end
