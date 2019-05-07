module ListingsHelper
    def current_listing
      @listing = Listing.find(params[:id])
    end
end
