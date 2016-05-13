Rails.application.routes.draw do
# Instructions Landing Page
  get("/", { :controller => "calculations", :action => "instructions" })

# Square Root Page
  get("/square_root/:number", { :controller => "calculations", :action => "square_root" })

# Random Number Page
    get("random/:min/:max", { :controller => "calculations", :action => "random_number" })

# Mortgage Page
    get("payment/:int/:period/:amount", { :controller => "calculations", :action => "loan_payment" })

end
