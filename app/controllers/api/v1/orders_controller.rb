module Api::V1
    class OrdersController < ApplicationController
      def index
        @orders = Order.all
        render json: @orders
      end

      def create 
        @order = Order.create(order_params)
        render json: @order
      end

      private

      def order_params
        params.require(:order).permit(:pickup, :delivery, :when, :vehicle, :price)
      end

    end
  end