class Recette < ApplicationRecord
  belongs_to :user
  attachment :image
end
