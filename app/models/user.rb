class User < ApplicationRecord
  has_secure_password #bcrypt magic
  validates :username, presence: true, uniqueness: true
  has_many :contacts
end
