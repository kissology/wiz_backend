class RestroomsController < ApplicationController
    def index
        restrooms = Restroom.all 
        render json: restrooms, status: 200
    end

    def show
        restroom = find_restroom
        render json: restroom, status: 200

    end



    private
    def find_restroom
        Restroom.find(params[:id])
    end
end
