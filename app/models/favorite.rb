class Favorite < ApplicationRecord
  belongs_to :user

  validates_presence_of :user_id, :remote_id, :image_url
end
