class OrderLineItemsController < ApplicationController
  before_action :set_order_line_item, only: %i[ show edit update destroy ]

  def index
    @order_line_items = OrderLineItem.all
  end

  def show
  end

  def new
    @order_line_item = OrderLineItem.new
  end

  def edit
  end

  def create
    @order_line_item = OrderLineItem.new(order_line_item_params)

    respond_to do |format|
      if @order_line_item.save
        format.html { redirect_to order_line_item_url(@order_line_item), notice: "Order line item was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order_line_item.update(order_line_item_params)
        format.html { redirect_to order_line_item_url(@order_line_item), notice: "Order line item was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order_line_item.destroy

    respond_to do |format|
      format.html { redirect_to order_line_items_url, notice: "Order line item was successfully destroyed." }
  
    end
  end

  private
    
    def set_order_line_item
      @order_line_item = OrderLineItem.find(params[:id])
    end

    def order_line_item_params
      params.require(:order_line_item).permit(:order_id, :product_id, :quantity, :unit_price, :price)
    end
end
