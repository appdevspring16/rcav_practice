Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get("/descriptive_statistics/new",     { :controller => "calculations", :action => "descriptive_statistics_form" })
  get("/descriptive_statistics/results", { :controller => "calculations", :action => "descriptive_statistics" })

end
