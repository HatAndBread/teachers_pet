class UsersController < ApplicationController
    def create
        @user = User.new(params.require(:user).permit(:username, :password, :email))
        @user.save
    end
    def new
    end
end
