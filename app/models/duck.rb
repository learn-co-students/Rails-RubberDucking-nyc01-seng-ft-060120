class Duck < ApplicationRecord
  belongs_to :student

  validates :student_name, presence: true
  
  


  def student_name=(name)
    self.student = Student.find_or_create_by(name: name)
  end
  
  def student_name
    self.student ? self.student.name : nil
  end
  

end
