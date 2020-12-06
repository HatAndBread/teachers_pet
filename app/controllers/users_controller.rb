class UsersController < ApplicationController
    def create
        @user = User.new(params.require(:user).permit(:username, :password, :email))
        session[:user_id] = @user.id
        @user.save

        redirect_to '/'
    end
    def new
    end
end
