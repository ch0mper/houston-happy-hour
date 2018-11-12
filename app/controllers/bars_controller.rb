class BarsController < ApplicationController
  before_action :define_current_bars

  def index
    @bars = Bar.all
  end

  def show
  end

  def new
  end

  def create
    @bar = Bar.create(bar_params)
    redirect_to @bar
  end

  def define_current_bars
    if params[:id]
      @bar = Bar.find(params[:id])
    else
      @bar = Bar.new
    end
  end

  def bar_params
    params.require(:bar).permit(:name, :address, :phone_number, :neighborhood, :vibe, :price_level, :sake, :beer, :cocktail, :beer_and_shot, :wine_glass, :wine_bottle, :start_time, :end_time)
  end

end
