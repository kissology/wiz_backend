class LocationsController < ApplicationController

    def index
        render json: Location.geocoded, except: [:created_at, :updated_at], status: :ok
    end

    def coordinates
        search_results = Geocoder.search(location_params[:address])
        true_address = search_results.first.address
        true_longitude = search_results.first.longitude
        true_latitude = search_results.first.latitude
        location = {address: true_address, longitude: true_longitude, latitude:true_latitude}
        # debugger
        render json: location, except: [:created_at, :updated_at], status: 200
end

    private

    def location_params
    params.permit(:address)
    end

end

