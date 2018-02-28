class TagsController < ApplicationController


  def new
    @house = House.find(params[:house_id])
    @character = Character.find(params[:character_id])
    @tag = @character.tags.new
  end


  def create
    @character = Character.find(params[:character_id])
    @house = @character.house
    @name = tag_params[:category].titleize
    @category = Category.find_or_create_by(name: @name)
    if !@character.categories.find_by(name: @name)
      Tag.create(character: @character, category: @category)
    end
    redirect_to house_character_path(@house, @character)
  end


  private
  def tag_params
    params.require(:tag).permit(:category)
  end


end
