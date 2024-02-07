class SquareController < ApplicationController
  def square_new
    render({ :template => "pages_template/square_new"})
  end

  def square_results
    @input = params["number"]
    @outcome = (@input.to_f) ** 2
    render({ :template => "pages_template/square_results"})
  end
end
