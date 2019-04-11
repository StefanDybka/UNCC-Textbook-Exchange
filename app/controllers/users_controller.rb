class UsersController < ApplicationController

    before_action :check_cancel, :only => [:create]

    def new
    end
    
    def show
        @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)
        
        @user.save
        redirect_to @user
    end
end

private
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end