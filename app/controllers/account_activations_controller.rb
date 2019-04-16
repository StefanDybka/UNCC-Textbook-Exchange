class AccountActivationsController < ApplicationController
    def edit
        user = User.find_by(email: params[:email])
        if user && !user.activated? && user.authenticated?(:activation, params[:id])
            user.update_attribute(:activated, true)
            user.update_attribute(:activated_at, Time.zone.now)
            log_in user
            flash[:sucess] = "Account activated!"
            redirect_to user
        else
            flash[:dange] = "Invalid actication link"
            redirect_to root_path
        end
    end
end
