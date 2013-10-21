class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :balance, numericality: { greater_than_or_equal_to: 0 }
  has_and_belongs_to_many :songs

  has_secure_password
end