class MessagesController < ApplicationController
    before_action :check_cancel, :only => [:create]
    def create
        @listing = Listing.find(params[:listing_id])
        ListingMailer.send_message(current_user, @listing, params[:message][:message]).deliver
        flash[:success] = "Message sent to listing holder."
        redirect_to listings_path
    end
    
    def new
        @listing = Listing.find(params[:listing_id])
    end
end

private
    def check_cancel
        if params[:commit] == "Back"
            redirect_to listing_path(params[:listing_id])
        end
    end