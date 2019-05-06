class ReportsController < ApplicationController
    
    def new
        @report = Report.new
    end
    
    def create
        if logged_in?
            @listing = Listing.find(params[:listing_id])
            @report = @listing.reports.build(params[:reason])
            @report.name = current_user.fname + " " + current_user.lname
            @report.email = current_user.email
        
            if @report.save
                flash[:success] = "Thank you! We will look into your report and be
                in contact soon."
                redirect_to listings_path
            else
                render 'new'
            end
        else
            flash[:danger] = 'You must be logged in to perform that action.'
            redirect_to listings_path
        end
    end
    
    def index
        @reports = Report.all
    end
    
    def destroy
        @report = Report.find(params[:id])
        @report.destroy
        
        redirect_to listing_reports_path
    end
    
end


private 
    def report_params
        params.require(:reports).permit(:reason, :listing_id)
    end
    
    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end