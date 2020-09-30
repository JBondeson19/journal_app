class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def show 
        @client = Client.find(params[:id])
    end


private

    def admin_params
        params.require(:client).permit(:name, :email, :license, :specialization, :location)
    end

    
end
