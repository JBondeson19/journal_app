class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def show 
        @client = Client.find(params[:id])
    end


private

    def client_params
        params.require(:client).permit(:name, :email, :location, :age)
    end

    
end
