class HomeController < ApplicationController
  def index
    @recettes = Recette.all.order(created_at: :desc)
  end
end
