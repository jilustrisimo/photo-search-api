class AddRemoteUrlToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :remote_url, :string
  end
end
