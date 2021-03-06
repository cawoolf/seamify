class OrdersController < ApplicationController

  def index
    # Show all orders for the current user
    if current_user.seamstress == true
      @orders = Order.where(seamstress_id: current_user.id)
    else
      @orders = Order.where(client_id: current_user.id)
    end
  end

  def show
    @order = Order.find(params[:id])
    @client = User.find(@order.client_id)
    @seamstress = @order.seamstress
    @services = @order.order_items.map(&:service)
    @total = 0
    @services.each do |s|
      @total += s.price
    end
  end

  def create
    @order = Order.new(order_params)
    @seamstress = User.find(params[:user_id])
    @order.client = current_user
    @order.seamstress = @seamstress
    services = @seamstress.services
    @clothings = services.map(&:clothing)
    @repairs = services.map(&:repair)
    @materials = services.map(&:material)
    if @order.save
      redirect_to order_path(@order)
    else
      @errors = @order.errors.messages
      @message = @errors.values.flatten[0]
      render "users/show"
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.confirmed = true
    if @order.update(drop_time_params)
      redirect_to order_path(@order)
    else
      render :show
    end
  end

  private

  def drop_time_params
    params.require(:order).permit(:drop_time)
  end

  def order_params
    params.require(:order).permit(order_items_attributes: [:service_id])
  end
end
