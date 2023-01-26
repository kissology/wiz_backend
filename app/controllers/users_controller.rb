class UsersController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
    # rescue_from ActiveRecord::RecordInvalid, with: :user_invalid
    def user_session
        user = User.find(session[:user_id])
        render json: user
      end


      def create
        new_user = User.create!(user_params)
        render json: new_user, status: 201
      end

      def update
        edit_user =  User.find_by(:username params[:username])
        edit_user.update(user_params)
        if edit_user
        render json: edit_user, status: :ok
        else 
            render json:{error:["unable to update credentials"]}
       
      end




      def destroy
        remove_user =  find_user
        remove_user.destroy
        head :no_content
      end



      private

      def find_user
        User.find(params[:id])
      end

      end
      def user_params
        params.permit(:first_name, :last_name, :email, :burough)
      end
      
end
