class UsersController < ApplicationController
    
    #before_action :current_user
    before_action :require_login
    skip_before_action :require_login, only: [:new, :create]
    before_action :set_user, only: [:show, :edit, :update]

    
    def index
        @users = User.all
    end

    def show
        # this works, it is using before_action :set_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else
          flash[:error_message] = 'Hey...you must be 21, or your username already exists!'
          redirect_to '/signup'
        end
    end

    def edit
        # this works, it is using before_action :set_user
    end

    def update
        # this works, it is using before_action :set_user
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        session.delete :user_id
        # session[:username] = nil
        redirect_to :login
    end

    private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :favorite_drink, :age)
    end
end
