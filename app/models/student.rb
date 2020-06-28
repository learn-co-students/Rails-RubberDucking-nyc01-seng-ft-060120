class Student < ApplicationRecord
  has_many :ducks
  validates :name, presence: true
  validates :mod, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }

  def duck_name
    self.ducks[@duck].name
  end


end
