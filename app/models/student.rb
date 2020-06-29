class Student < ApplicationRecord
    has_many :ducks
    validates :name, :presence => true
    validates :name, :uniqueness => true
    

    def duck_names
        self.ducks.map {|duck| duck.name}
    end

end
