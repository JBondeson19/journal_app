class ClientAdminsController < ApplicationController

    def new 
        @clientadmin = ClientAdmin.new
    end 
    
end
