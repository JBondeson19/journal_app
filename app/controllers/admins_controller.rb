class AdminsController < ApplicationController

    before_action, only: [:show, :index]
 
    def index
       @admins = Admin.all 
    end

    def show 
    end






 private

    def find_admin
        @admin = Admin.find(params[:id])
    end

end
