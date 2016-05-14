Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:id", { :controller => "calculations", :action => "square" })
  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })
  get("/random/:min/:max", { :controller => "calculations", :action => "minmax" })
  get("/payment/:rate/:years/:prin", { :controller => "calculations", :action => "payment" })
end
