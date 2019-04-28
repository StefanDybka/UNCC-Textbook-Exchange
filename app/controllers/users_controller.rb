class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update]
  
  def show
    @user = User.find(params[:id])
    redirect_to root_url and return unless @user.activated?
  end  
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
        
        if @user.update_attributes(user_params)
          flash[:success] = "Successfuly updated your user info"
          redirect_to user_path
        else
            flash[:warning] = "There was an error while updating your account."
            redirect_to edit_user_path
        end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.account_activation(@user).deliver
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    log_out if logged_in?
    @user.destroy
    flash[:success] = "User account succesfully deleted."
    redirect_to root_path
  end
  
  def change_password
    @user = User.find_by(id: current_user)
    @user.create_reset_digest
    redirect_to edit_password_reset_url(@user.reset_token, email: @user.email)
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password,
        :password_confirmation)
    end
    
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to new_session_path
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end
