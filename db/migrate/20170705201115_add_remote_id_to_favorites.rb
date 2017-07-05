class AddRemoteIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :remote_id, :string
  end
end
