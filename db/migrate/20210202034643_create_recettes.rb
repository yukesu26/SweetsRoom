class CreateRecettes < ActiveRecord::Migration[6.0]
  def change
    create_table :recettes do |t|
      t.integer :user_id
      t.string :title
      t.text :memo
      t.string :image_id

      t.timestamps
    end
  end
end
