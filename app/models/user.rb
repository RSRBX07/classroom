class User < ApplicationRecord
  validates :login, presence: true, uniqueness: true
  has_many :student
end
