class RandomController < ApplicationController
  def random_new
    render({ :template => "pages_template/random_new"})
  end

  def random_results
    @minimum = params["minimum"].to_f
    @maximum = params["maximum"].to_f
    @outcome = rand(@minimum..@maximum)
    render({ :template => "pages_template/random_results"})
  end
end
