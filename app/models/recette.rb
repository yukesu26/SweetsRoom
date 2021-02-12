class Recette < ApplicationRecord
  belongs_to :user
  attachment :image


  with_options presence: true do
     validates :title
     validates :memo
     validates :image
    end
end
