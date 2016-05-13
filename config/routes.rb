Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })


  get("/random/:first_number/:second_number", { :controller => "calculations", :action => "square_root" })

end
