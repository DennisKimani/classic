class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render :index
  end
  def show
    @order = Order.find(params[:id])
    render :show
  end
  def new
    @order = Order.new
    render :new
  end
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end
end
