class BarsController < ApplicationController
  before_action :require_login
  before_action :define_bars, only: [:show, :new, :create, :edit, :update]

  def index
    if params[:search]
      @bars = Bar.where("neighborhood like ?", "%#{params[:search]}%")
    else
      @bars = Bar.all.order(:name)
    end
  end

  def show
    @user_bar = UserBar.new
  end

  def new
  end

  def create
    @bar = Bar.create(bar_params)
    redirect_to @bar
  end

  def do_visit
    UserBar.find_by(bar_id: params[:id], user_id: session[:user_id]).visited
    redirect_to bar_path(params[:id])
  end

  def do_like
    UserBar.find_by(bar_id: params[:id], user_id: session[:user_id]).liked
    redirect_to user_path(session[:user_id])
  end

  def define_bars
    if params[:id]
      @bar = Bar.find(params[:id])
    else
      @bar = Bar.new
    end
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :phone_number, :neighborhood, :vibe, :price_level, :sake, :beer, :cocktail, :beer_and_shot, :wine_glass, :wine_bottle, :well_drink, :start_time, :end_time)
  end

end
