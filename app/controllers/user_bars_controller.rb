class UserBarsController < ApplicationController
  def new
  end

  def create
    @userbars = UserBar.create(userbar_params)
  end

  def userbar_params
    params.require(:userbar).permit(:user_id, :bar_id)
  end
end
