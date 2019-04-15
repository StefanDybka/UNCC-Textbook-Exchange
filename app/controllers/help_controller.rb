class HelpController < ApplicationController
    def show
        render params[:page]
    end
    def create
    end
end
