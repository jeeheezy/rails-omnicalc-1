class SquareRootController < ApplicationController
  def square_root_new
    render({ :template => "pages_template/square_root_new"})
  end

  def square_root_results
    @input = params["number"]
    @outcome = (@input.to_f) ** 0.5
    render({ :template => "pages_template/square_root_results"})
  end
end
