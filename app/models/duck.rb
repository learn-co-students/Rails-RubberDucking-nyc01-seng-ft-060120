class Duck < ApplicationRecord
    belongs_to :student
    validates :student_id, presence: true
    def student_name
        self.student.name
    end

end
