class LocationsController < ApplicationController

    def index
        render json: Location.geocoded, except: [:created_at, :updated_at], status: :ok
    end

end
