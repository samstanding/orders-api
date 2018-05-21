module Api::V1
    class OrdersController < ApplicationController
      before_action :set_status
      def index
        @orders = Order.all
        render json: @orders
      end

      def create 
        @order = @status.orders.create! (order_params)
        render json: @order

      end

      private

      def set_status
        @status = Status.find(params[:status_id])
      end

      def order_params
        params.require(:order).permit(:pickup, :delivery, :when, :vehicle, :price, :status_id)
      end

    end
  end