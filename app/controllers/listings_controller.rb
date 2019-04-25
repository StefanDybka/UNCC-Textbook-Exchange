class ListingsController < ApplicationController
    
    before_action :check_cancel, :only => [:create]
    
    def new
        @listing = Listing.new
    end
    
    def index
        if params[:search]
            @listings = Listing.where('title LIKE ?', "%#{params[:search]}%").or(Listing.where('ISBN LIKE ?', "%#{params[:search]}%"))
        else
            @listings = Listing.all
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
end

private 
    def listings_params
        params.require(:listing).permit(:title, :isbn, :condition, :comments, :search)
    end

    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end