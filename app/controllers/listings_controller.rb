class ListingsController < ApplicationController
    
    before_action :check_cancel, :only => [:create]
    
    def new
        @listing = Listing.new
    end
    
    def index
        @listings = Listing.all
    end
    def create
        @listing = Listing.new(listing_params)
        
        if @listing.save
            redirect_to @listing
        else
            render 'new'
        end
    end
    def show
        @listing = Listing.find(params[:id])
    end
    
end

private 
    def listing_params
        params.require(:listing).permit(:name, :isbn, :email, :condition)
    end

    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end