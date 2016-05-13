Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })


  get("/random/:first_number/:second_number", { :controller => "calculations", :action => "random_number" })

  get("/payment/:int_rate_bps/:loan_term_yrs/:loan_amount", { :controller => "calculations", :action => "payment_calculator" })

end
