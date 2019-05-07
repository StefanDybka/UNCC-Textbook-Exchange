class MessagesController < ApplicationController
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
