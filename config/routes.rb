Rails.application.routes.draw do
  get("/", { :controller => "square", :action => "square_new"})
  get("/square/new", { :controller => "square", :action => "square_new"})
  get("/square/results", { :controller => "square", :action => "square_results"})
  get("/square_root/new", { :controller => "square_root", :action => "square_root_new"})
  get("/square_root/results", { :controller => "square_root", :action => "square_root_results"})
  get("/random/new", { :controller => "random", :action => "random_new"})  
  get("/random/results", { :controller => "random", :action => "random_results"})
  # get("/payment/new", { :controller => "", :action => ""})
  # get("/payment/results", { :controller => "", :action => ""})
end
