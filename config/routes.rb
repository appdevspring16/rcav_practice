Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

#CREATE Square
  get("/square/new",    { :controller => "calculations",    :action => "new_form"})
  get("/create_square", { :controller => "calculations",    :action => "create_row" })

#READ Square
  get("/square/", {:controller => "calculations", :action => "index"})
  get("/square/:number", { :controller => "calculations", :action => "show"})

end
