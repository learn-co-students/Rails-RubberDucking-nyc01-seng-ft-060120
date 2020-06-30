class Student < ApplicationRecord
  has_many :ducks
  accepts_nested_attributes_for :ducks, reject_if: ->(attributes){ attributes['name'].blank? }, allow_destroy: true

  validates :name, :mod, presence: true
  validates :mod, numericality: {only_integer: true, greater_than: 0, less_than: 6}
  
  
  
end
