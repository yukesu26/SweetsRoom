class RecettesController < ApplicationController
  def index
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def new
    @recette = Recette.new
  end

   
  def create
    @recette = Recette.new(recette_params)
    @recette.user_id = current_user.id
    @recette.save
    redirect_to recette_path(@recette)
  end

  def edit
    @recette = Recette.find(params[:id])
  end

  def update
    @recette = Recette.find(params[:id])
    @recette.update(recette_params)
    redirect_to recette_path(@recette)
  end
    
  private
    
  def recette_params
      params.require(:recette).permit(:title, :memo, :image)
  end
  
end