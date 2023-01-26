class SessionsController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user

        #allows the user to log in 
      end
    
      def logout
        session.delete :user_id
        head :no_content

    #allows user to logout 
      end
end
