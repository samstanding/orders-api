module Api::V1
class StatusesController < ApplicationController
    def index
        @statuses = Status.select("*").joins(:orders)
        render json: @statuses
      end
    end
end
