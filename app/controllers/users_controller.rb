class UsersController < ApplicationController
   
    def user_session
        user = User.find_by(email: session[:email])
        if user
        render json: user
        else 
        render json: { error: "Not authorized" }, status: :unauthorized
    end
  end
      def create
        new_user = User.create!(user_params)
        render json: new_user, status: 201
      end

      # def update
      #   edit_user =  User.find_by(:email params[:email])
      #   edit_user.update(user_params)
      #   if edit_user
      #   render json: edit_user, status: :ok
      #   else 
      #       render json:{error:["unable to update credentials , Email does not EXIST!"]}
      #   end
      # end

      def destroy
        remove_user =  find_user
        remove_user.destroy
        head :no_content
      end



      private

      def find_user
        User.find(params[:id])
      end

      def user_params
        params.permit(:first_name, :last_name, :email, :burough)
      end
      
    end