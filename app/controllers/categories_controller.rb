class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @characters = @category.characters
  end

end
