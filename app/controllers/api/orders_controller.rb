class Api::OrdersController < ApplicationController

  def create
    # @message = "hello"
    @orders = Order.new( 
      user_id:params[:user_id],product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]

    )
    render "show.json.jb"
  end

end

