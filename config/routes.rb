Rails.application.routes.draw do
  get("/",{ :controller => "zebras", :action => "home"})
  get("/square/results", { :controller => "zebras", :action => "square"})
  get("/square/new", { :controller => "zebras", :action => "new_square"})
  get("/square_root/new", { :controller => "zebras", :action => "root"})
  get("/square_root/results", { :controller => "zebras", :action => "root_results"})
  get("/payment/new", { :controller => "zebras", :action => "payment"})
  get("/payment/results", { :controller => "zebras", :action => "payment_results"})
  get("/random/new", { :controller => "zebras", :action => "random"})
  get("/random/results", { :controller => "zebras", :action => "random_results"})
end
