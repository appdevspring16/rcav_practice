Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/square_root/:user_input", :controller=>"calculations", :action=>"square_root")

  get("/random/:min/:max", :controller=>"calculations", :action=>"random")

  get("/payment/:rate/:period/:principal", :controller=>"calculations", :action=>"payment")
end
