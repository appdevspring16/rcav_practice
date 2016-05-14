Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get('/square_root/:number', { :controller => "calculations", :action => "squares" })

  get('/random/:number1/:number2', { :controller => "calculations", :action => "random" })

    get('/payment/:intrest/:years/:principal', { :controller => "calculations", :action => "loan" })

end
