class Api::ProductsController < ApplicationController
  def index
    @message = "product index"
    # @products = Product.all
    render "index.json.jb"
  end
end
