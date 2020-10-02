class UsersController <ApplicationController 

    def login
        render :login_form
    end

    def process_login
        user = User.find_by(username :params[:username])

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect_to client_path

        else 
            flash.now[:no_user] = "Wrong username or password"
            render :login_form 
        end

    end 


    def logout
        session.clear 
        flash[:message] = "You are now logged out"
        redirect_to admins_path

    end

    def new 
        @user = User.new

    end 

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to admins_path
        else 
            render :new 
        end 

    end 

private 

    def user_params
        params.require(:user).permit(:username, :password)
    end



end 