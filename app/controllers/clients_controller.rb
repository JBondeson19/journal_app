class ClientsController < ApplicationController
   
    before_action :authorized, only: [:edit, :new]

    def index
        @clients = Client.all

        cookies[:times_visited] ||= 0
        cookies[:times_visited] = cookies[:times_visited].to_i + 1
        render(:index)
    end

    def show 
        @client = Client.find(params[:id])
    end

    def new 
        @client = Client.new 
        render :new
    end 

    def edit 
        @client = Client.find(params[:id])
    end 

    def update
        
        @client = Client.find(params[:id].to_i)
        params[:client][:age] = params[:client][:age].to_i


        if @client.update(client_params)
            redirect_to client_path(@client[:id])
          else 
            render :edit 
          end
    end


    def create 
        @client = Client.create(client_params)
        if @client.valid?
            redirect_to client_path(@client)
        else 
            render :new
        end

    end 

    def destroy 
        Client.destroy(params[:id])
        redirect_to clients_path
    end


private

    def client_params
        params.require(:client).permit(:name, :email, :location, :age)
    end

    
end
