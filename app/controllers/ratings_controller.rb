class RatingsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :rating_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :rating_invalid
    def index
        ratings = Rating.all 
        render json: ratings, status: :ok
    end

    def show 
        rating = finding_rating
        render json: rating, serializer: RatingShowSerializer, status: 201
    end 


    def create
        new_rating =  Rating.create!(rating_params)
        render json: new_rating, status: :created
    end

    def update
        edit_rating = finding_rating
      edit_rating.update!(rating_params)
        render json: edit_rating, status: :ok
    end

    def destroy
        remove_rating = finding_rating
        remove_rating.destroy
        head :no_content
    end





    private

    def rating_params
        params.permit( :user_id , :restroom_id ,:cleanliness,  :changing_table, :handicap_accessable, :gender_neutral, :feminine_products, :mirror)
    end

    def finding_rating
        Rating.find(params[:id])
    end
    def rating_not_found
        render json: [error: "RATING NOT FOUND "], status: 404
    end
    def rating_invalid invalid_rating
        render json: {errors: invalid_rating.record.errors.full_messages}, status: 422

    end
end
