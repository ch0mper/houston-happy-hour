class SessionsController < ApplicationController

  before_action :require_login
  before_action :current_user
  skip_before_action :require_login, only: [:new, :create]
  
  def new
  end

  def create

    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else 
      flash[:error_message] = 'Incorrect Username/Password! Please try again'
      redirect_to login_path
    end
  end

  def destroy
    session.delete :user_id
    redirect_to :login
  end

  # def message
  #   @message = flash[:message]
  # end

end
