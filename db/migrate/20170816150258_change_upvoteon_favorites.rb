class ChangeUpvoteonFavorites < ActiveRecord::Migration[5.0]
  def change
    change_column :favorites, :upvote_count, :integer, default: 0
  end
end
