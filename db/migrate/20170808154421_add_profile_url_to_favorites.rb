class AddProfileUrlToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :profile_url, :string
  end
end
