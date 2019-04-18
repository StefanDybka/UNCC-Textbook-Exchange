class ListingsController < ApplicationController
    
    before_action :check_cancel, :only => [:create]
    
    def new
        @listing = Listing.new
    end
    
    def index
        @listings = Listing.all
    end
    
    def create
        @listing = current_user.listings.build(listing_params)
        
        @listing.email = current_user.email
        
        if @listing.save
            redirect_to @listing
        else
            render 'new'
        end
    end
    
    def show
        @listing = Listing.find(params[:id])
    end
    
    def destroy
        @listing = Listing.find(params[:id])
        @listing.destroy
        
        redirect_to listings_path
    end
end

private 
    def listing_params
        params.require(:listing).permit(:title, :isbn, :condition)
    end

    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end