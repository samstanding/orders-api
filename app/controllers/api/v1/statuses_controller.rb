module Api::V1
class StatusesController < ApplicationController
    def index
        @statuses = Status.find_by_sql("SELECT * FROM statuses INNER JOIN orders ON statuses.id = orders.status_id ORDER BY orders.created_at desc")
        render json: @statuses
    end

    def show
        @status = Status.select("*").joins(:orders).where('statuses.id = ?', params[:id])
        render json: @status
    end

    end
end
