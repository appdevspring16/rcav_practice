Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

# Square
get("/square/:NUMBER", {:controller => "calculations",:action=>"square"})
# Square Root
get("/square_root/:NUMBER",{:controller=>"calculations",:action=>"square_root"})
# Random number
get("/random/:MIN/:MAX",{:controller=>"calculations",:action=>"random"})
# mortgage calculator
get("/payment/:INTEREST_RATE/:NUMBER_OF_YEARS/:PRINCIPAL_VALUE",{:controller=>"calculations",:action=>"payment"})

end
