class Student < ApplicationRecord
  validates :name, :presence => true
  belongs_to :course, required: false
  has_many :user

  default_scope {self.ordered_by_name}

  def self.limit value
    self.limit value
  end

  def self.ordered_by_name
    self.order(:name, :age)
  end
end
