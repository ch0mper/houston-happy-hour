class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit]
    
    def index
        @users = User.all
    end
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end
    
    def create
        # @user = User.new(params[:user])
        # if @user.save
        #     session[:username] = @user.username
        #     redirect_to @user
        # else
        #     flash[:message] = "Password doesnt match!"
        #     redirect_to :login
        
        # end
       
        @user = User.new(user_params)
       if @user.save
           flash[:success] = "Welcome to the Sample App!"
           redirect_to @user
        else
           render 'new'
        end
    end

    def destroy
        session.delete :username
        # session[:username] = nil
        redirect_to :login
    end

    
    

    # def update
    #     @user = User.find(params[:id])
    #     @user.update(user_params)
    #     redirect_to @user
    # end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
     params.require(:user).permit(:username, :password, :favorite_drink, :age)
    end

end
