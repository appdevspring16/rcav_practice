Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/calculator",{:controller=> "calculations", :action=>"calculator"})
#square root

  get("/square_root/:the_square",{:controller=>"calculations",:action=>"no_form"})
  get("/square_root",{:controller=>"calculations",:action=>"square_root"})
  get("/square/:square",{:controller=>"calculations",:action=>"no_form1"})
  get("/square",{:controller=>"calculations",:action=>"square"})

  get("/random/:start/:end", {:controller=>"calculations",:action=>"no_form_rand"})
  get("/randrange",{:controller=>"calculations",:action=>"randrange"})

  get("/payment/:points/:years/:principal",{:controller=>"calculations",:action=>"pmt"})
  get("/pmt_form",{:controller=>"calculations",:action=>"pmt_form"})

end
