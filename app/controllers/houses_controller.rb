class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end
  def edit
    @house = House.find(params[:id])
    # if @house.user != current_user
    #   flash[:alert] = "Only the author can edit."
      # redirect_to house_path(@house)
    # end
  end
  def new
    @house = House.new
  end
  def create
    @house = House.create!(house_params)
    redirect_to house_path(@house)
  end
  def update
    @house = House.find(params[:id])
    # if @house.user == current_user
      @house.update(house_params)
    # else
    #   flash[:alert] = "Only the author can delete."
    # end
    redirect_to house_path(@house)
  end
  def destroy
    @house = House.find(params[:id])
    # if @house.user == current_user
      @house.destroy
    # else
    #   flash[:alert] = "Only the author can delete."
    # end
    redirect_to houses_path
  end

  private
    def house_params
      params.require(:house).permit(:name, :img_url, :region, :location)
    end

end
