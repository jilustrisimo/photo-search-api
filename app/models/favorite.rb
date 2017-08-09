class Favorite < ApplicationRecord
  # belongs_to :user

  validates_presence_of :photographer, :image_url, :profile_url, :remote_url
  validates :image_url, :profile_url, :remote_url, uniqueness: :true
end
