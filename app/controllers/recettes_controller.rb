class RecettesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @recette = Recette.new
  end

  def create
    @recette = Recette.new(recette_params)
    @recette.user_id = current_user.id
    if @recette.save
    redirect_to recette_path(@recette), notice: '投稿しました'
    else
      render :new
    end
  end

  def index
    @recettes = Recette.all.order(created_at: :desc)
  end

  def show
    @recette = Recette.find(params[:id])
  end

  def edit
    @recette = Recette.find(params[:id])
    if @recette.user != current_user
      redirect_to root_path, alert: '不正なアクセスです!!!!!'
    end
  end
 
  def update
    @recette = Recette.find(params[:id])
    if @recette.update(recette_params)
    redirect_to recette_path(@recette), notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    recette = Recette.find(params[:id])
    recette.destroy
    redirect_to user_path(recette.user)
  end 

  private
    
  def recette_params
      params.require(:recette).permit(:title, :memo, :image)
  end
  
end