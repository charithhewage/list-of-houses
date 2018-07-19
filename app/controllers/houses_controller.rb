class HousesController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_house, only: %i[show edit update destroy]

  def index
    @house = House.all
  end

  def show; end

  def new
    @house = House.new
  end

  def edit; end

  def create
    @house = House.new house_params
    @house.user = current_user

    if @house.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update; end

  def destroy; end

  private

  def set_house
    @house = House.find params[:id]
  end

  def house_params
    params.require(:house).permit(:rent, :deposit,
                                  :description)
  end
end
