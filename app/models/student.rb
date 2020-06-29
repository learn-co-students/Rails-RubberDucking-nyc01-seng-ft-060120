class Student < ApplicationRecord
    has_many :ducks
    # validates :mod, numericality: true
    # validates :mod, numericality: {greater_than: 0, less_than: 6}

    def duck_name=(name)
        self.duck = Duck.find_or_create_by(name: name)
    end

    def duck_name
        self.duck ? self.duck.name : nil
    end

end
