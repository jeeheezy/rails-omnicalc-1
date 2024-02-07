Rails.application.routes.draw do
  get("/", { :controller => "square_controller", :action => "square_new"})
  get("/square/new", { :controller => "square_controller", :action => "square_new"})
  get("/square/results", { :controller => "square_controller", :action => "square_results"})
  # get("/square_root/new", { :controller => "", :action => ""})
  # get("/square_root/results", { :controller => "", :action => ""})
  # get("/random/new", { :controller => "", :action => ""})  
  # get("/random/results", { :controller => "", :action => ""})
  # get("/payment/new", { :controller => "", :action => ""})
  # get("/payment/results", { :controller => "", :action => ""})
end
