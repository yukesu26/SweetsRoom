class HomeController < ApplicationController
  def index
     
    @recettes = Recette.all.order(created_at: :desc)
    @recettes = Recette.page(params[:page]).per(6)
  end
end
