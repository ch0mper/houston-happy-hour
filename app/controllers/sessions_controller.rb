class SessionsController < ApplicationController
  # before_action :define_message
  #
  
  def new
  end

  def create

    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:username] = @user.username
      redirect_to @user      
    else 
      flash[:error_message] = 'Incorrect Username/Password! Please try again'
      redirect_to login_path
    end
  end

  def destroy
    session[:username] = nil
    redirect_to :login
  end

  # def message
  #   @message = flash[:message]
  # end

end
