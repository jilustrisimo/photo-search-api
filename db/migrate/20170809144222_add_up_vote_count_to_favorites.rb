class AddUpVoteCountToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :upvote_count, :integer
  end
end
