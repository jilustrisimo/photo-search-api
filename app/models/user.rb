class User < ApplicationRecord
  has_many :favorites
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_email_format_of :email

  validates :password, length: { minimum: 8 }, on: :create
end
