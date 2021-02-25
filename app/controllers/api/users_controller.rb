class Api::UsersController < ApplicationController

    def create 
        @user = User.new(user_params)
        debugger
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
        params.require(:user).permit(:fname, :lname, :email, :zip_code, :password, :profile)
    end
end
