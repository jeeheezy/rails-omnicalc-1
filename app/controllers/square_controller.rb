class SquareController < ApplicationController
  def square_new
    render({ :template => "pages_template/square_new"})
  end

  def square_result
    @input = params["number"]
    @outcome = (@input.to_f) ** 2
    render({ :template => "pages_template/square_result"})
  end
end
