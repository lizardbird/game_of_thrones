class CharactersController < ApplicationController

  def index
    @characters = Character.all.sort
    @characters.sort! { |a,b| a.house.name.downcase <=> b.house.name.downcase }

  end

  def show
    @character = Character.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
    @house = @character.house
    # if @character.user != current_user
    #   flash[:alert] = "Only the author can edit."
    #   redirect_to character_path(@character)
    # end
  end

  def new
    @house = House.find(params[:house_id])
    @character = @house.characters.new
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)
    redirect_to house_path(@house)
  end

  def update
    @character = Character.find(params[:id])
    # if @character.user == current_user
      @character.update(character_params)
    # else
    #   flash[:alert] = "Only the author can delete."
    # end
    redirect_to house_character_path
  end

  def destroy
    @character = Character.find(params[:id])
    # if @character.user == current_user
      @character.destroy
    # else
    #   flash[:alert] = "Only the author can delete."
    # end
    redirect_to characters_path
  end

  private
    def character_params
      params.require(:character).permit(:name, :img_url, :is_alive)
    end



end
