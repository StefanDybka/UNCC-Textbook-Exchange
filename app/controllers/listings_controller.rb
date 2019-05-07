class ListingsController < ApplicationController
    
    before_action :check_cancel, :only => [:create, :edit]
    
    def new
        @listing = Listing.new
    end
    
    def index
        @listings = Listing.all
    end
    
    def edit
        @listing = Listing.find(params[:id])
    end
    
    def update
         @listing = Listing.find(params[:id])
        
        if @listing.update_attributes(listings_params)
            flash[:success] = "Listing succesfully updated"
            redirect_to user_path(current_user)
        else
            flash[:warning] = "There was an error while updating your listing."
            redirect_to edit_listing_path
        end
    end
    
    def create
        if logged_in?

            @listing = current_user.listings.build(listings_params)
            @listing.email = current_user.email
            
            if @listing.save
                flash[:success] = "Listing succesfully created."
                redirect_to @listing
            else
                render 'new'
            end
        else
            flash.now[:danger] = 'You must be logged in to perform that action.'
            redirect_to listings_path
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
    
    def current_listing
      @listing = Listing.find(params[:id])
    end
end


private 
    def has_reports?
        return @listing.reports.count != 0
    end
    
    def listings_params
        params.require(:listing).permit(:title, :isbn, :condition, :comments)
    end

    def check_cancel
        if params[:commit] == "Back"
            redirect_to listings_url
        end
    end