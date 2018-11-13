class SessionsController < ApplicationController
  # before_action :define_message
  
  def new
  end

  def create
    # if params[:username].nil? || params[:username].empty?
    #   return redirect_to :login
    # else
    #  session[:username] = params[:username]
    #  redirect_to @user
    # end
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:username] = @user.username
      redirect_to @user
      byebug
    else 
      flash[:message] = 'Incorrect Username/Password! Please try again'
    end
      redirect_to login_path
  end

  def destroy
    session[:username] = nil
    redirect_to :login
  end

  # def message
  #   @message = flash[:message]
  # end

end
