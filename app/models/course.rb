class Course < ApplicationRecord
    validates :field, presence: true
    has_many :students

    def self.ordered_by_last_created
        self.order created_at: :desc
    end
end
