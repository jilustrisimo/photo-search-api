class AddPhotographerToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :photographer, :string
  end
end
