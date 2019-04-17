class ReportsController < ApplicationController
    
    
    
    def new
        @report = Report.new
    end
    
    def create
        @report = Report.new(report_params)
        
        if @report.save
            redirect_to @report
        else
            render 'new'
        end
    end
    
    def index
        @reports = Report.all
    end
    
    def show
        @report = Report.find(params[:id])
    end
    
    def destroy
        @report = Report.find(params[:id])
        @report.destroy
        
        redirect_to reports_path
    end
    
end


private 
    def report_params
        params.require(:report).permit(:name,:email,:reason)
    end
    
    def check_cancel
        if params[:commit] == "Back"
            redirect_to root_url
        end
    end