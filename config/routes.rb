Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:ID", { :controller => "calculations", :action => "square_root" })

  get("/square/:id", { :controller => "calculations", :action => "square" })

  get("/random/:min/:max", { :controller => "calculations", :action => "random" })

  #payment form
  get("/payment", { :controller => "calculations", :action => "payment_form"})
  get("/payment/calculate", { :controller => "calculations", :action => "calculate"})
  get("/payment/:interest/:years/:principal", { :controller => "calculations", :action => "payment" })





end
