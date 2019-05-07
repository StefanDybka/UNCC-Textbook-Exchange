class ListingMailer < ApplicationMailer
    def send_message(current_user, listing, message)
        @listing = listing
        @message = message
        @user = current_user
        mail to: @listing.email, from: @user.email, subject: "Interest in your listing"
    end
end
