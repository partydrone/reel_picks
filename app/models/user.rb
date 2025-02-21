class User < ApplicationRecord
  has_person_name
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :contests, through: :memberships

  has_one_attached :avatar

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :email_address, presence: true, uniqueness: true, email: true
end
