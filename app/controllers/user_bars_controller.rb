class UserBarsController < ApplicationController
  def new
  end

  def create
    @userbar = UserBar.create(userbar_params)
    redirect_to user_path(session[:user_id])
  end

  def userbar_params
    params.require(:user_bar).permit(:user_id, :bar_id)
  end
end
