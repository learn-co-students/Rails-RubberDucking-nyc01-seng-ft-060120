class Student < ApplicationRecord
    has_many :ducks
    validates :name, presence: true

    def duck_name
        self.ducks[@duck].name
    end
    
end
