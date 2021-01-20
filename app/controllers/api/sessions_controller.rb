class Api::SessionsController < ApplicationController
    def create 
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
    end

    def destroy 
        @user = current_user
        if @user
            @user.logout! 
            render "/api/users/show"
        else
            render json: ["Noone has signed in right now"], status: 404
        end
    end
end
