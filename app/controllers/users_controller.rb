class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to @user
        else
          flash[:error_message] = 'Must be 21, and username must be unique'
          redirect_to 'new' ## make sure this works
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to @user
    end

    def destroy
        session.delete :username
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
