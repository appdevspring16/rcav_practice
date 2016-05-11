Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

   #LOAN PAYMENT
  get("/payment", { :controller => "calculations", :action => "payment_new" })
  get("/payment/:interest_rate/:number_of_years/:principal_value", { :controller => "calculations", :action => "payment_calculate" })

  
    #MIN/MAX
  get("/random", { :controller => "calculations", :action => "random_new" })
  get("/random/:min/:max", { :controller => "calculations", :action => "random_calculate" })


   #SQUARE
  get("/square", { :controller => "calculations", :action => "square_new" })
  get("/square/:number", { :controller => "calculations", :action => "square_calculate" })

  #SQUARE ROOT
  get("/square_root", { :controller => "calculations", :action => "square_root_new" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root_calculate" })

 






end
