class Api::UsersController < ApplicationController
    def index 
        @users = User.all
        render :index 
    end
    
    def create 
        @user = User.new(user_params)
        if @user.save 
            login!(@user)
            render :show
            #this is what 
        else
            render json: @user.errors.full_messages, status: 422 
        end
    end

    private

    def user_params 
        params.require(:user).permit(:fname, :lname, :email, :zip_code, :password, :profile_pic)
    end
end
