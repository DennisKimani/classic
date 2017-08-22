class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render :index
  end
  def show
    @order = Order.find(params[:id])
    render :show
  end
end
