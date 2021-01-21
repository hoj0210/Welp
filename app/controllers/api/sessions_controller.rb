class Api::SessionsController < ApplicationController
    before_action :ensure_login, only: [:destroy]

    def create 
        @user = User.find_by_credentials(params[:user][:email], params[:user][:password])
        if @user
            login!(@user)
            render "/api/users/show"
            #this needs to render the splash page.
            #we cannot do :show because it would think to just go to views/sessions/show which is not there
        else
            render json: ["Invalid username and/or password"], status: 401   
        end
    end

    def destroy 
        logout!
        render json: {message: "logout was successful"}
    end
end
