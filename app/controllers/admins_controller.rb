class AdminsController < ApplicationController

 
    
    def index
       @admins = Admin.all 
    end

    def show 
        @admin = Admin.find(params[:id])
    end


 private

    def admin_params
        params.require(:admin).permit(:name, :email, :license, :specialization, :location)
    end

    def require_login
      return head(:forbidden) unless session.include? :user_id
    end

end
