class Duck < ApplicationRecord
  belongs_to :student
  accepts_nested_attributes_for :student


  def student_name
    self.student.name
  end
end
