Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

    #MIN/MAX
  get("/random", { :controller => "calculations", :action => "random_new" })
  get("/random/:min/:max", { :controller => "calculations", :action => "random_calculate" })
  
  
   #SQUARE
  get("/square", { :controller => "calculations", :action => "square_new" })
  get("/square/:number", { :controller => "calculations", :action => "square_calculate" })

  #SQUARE ROOT
  get("/square_root", { :controller => "calculations", :action => "square_root_new" })
  get("/square_root/:number", { :controller => "calculations", :action => "square_root_calculate" })
  
   #MIN/MAX
  get("/random", { :controller => "calculations", :action => "random_new" })
  get("/random/:min/:max", { :controller => "calculations", :action => "random_calculate" })




end
