class MessagesController < ApplicationController
    def create
        flash[:success] = 'Working'
    end
end
