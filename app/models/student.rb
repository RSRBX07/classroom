class Student < ApplicationRecord
  validates :name, :presence => true
  belongs_to :course, required: false
  belongs_to :user

  default_scope {self.ordered_by_name}
 
  def self.of_user user
    user.student
  end

  def self.limit value
    self.limit value
  end

  def self.ordered_by_name
    self.order(:name, :age)
  end
end
