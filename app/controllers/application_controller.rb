class ApplicationController < ActionController::Base
    def about
        @num_clients = Scientist.count 
        @num_admins = Planet.count
        render :about
    end 
end
