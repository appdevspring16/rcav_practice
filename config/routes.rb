Rails.application.routes.draw do
#Landing page
  get("/", { :controller => "calculations", :action => "instructions" })

#Square root
get("/square_root/:number",{:controller=>"calculations",:action=>"sqr_rt"})

#Random number
get("/random/:min/:max",{:controller=>"calculations", :action=>"random_number"})

#Loan Payment Calculator
get("/payment/:bp/:yr/:principal",{:controller=>"calculations",:action=>"payment"})

end
