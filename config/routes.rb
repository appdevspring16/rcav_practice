Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })




  get("/calculator",{:controller=> "calculations", :action=>"calculator"})
  get("/square_root/:the_square",{:controller=>"calculations",:action=>"no_form"})
  get("/square_root",{:controller=>"calculations",:action=>"square_root"})
  get("/random/:start/:end", {:controller=>"calculations",:action=>"no_form_rand"})
  get("/randrange",{:controller=>"calculations",:action=>"randrange"})


  

end
