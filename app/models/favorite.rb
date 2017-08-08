class Favorite < ApplicationRecord
  belongs_to :user

  validates_presence_of :photographer, :image_url, :profile_url
  validate :image_url, :profile_url, uniqueness: :true
end
