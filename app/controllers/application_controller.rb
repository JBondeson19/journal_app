class ApplicationController < ActionController::Base
    def about
        @num_clients = Client.count 
        @num_admins= Admin.count
        render :about
    end 
end
