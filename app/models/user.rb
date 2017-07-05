class User < ApplicationRecord

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates_email_format_of :email


end
