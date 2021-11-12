class Cat < ApplicationRecord

    COLORS = ['red', 'blue', 'green', 'purple', 'black']

    validates :birth_date, :name, :description, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: ['M','F']
    
    def age
        now = Time.now.utc.to_date
        dob = self.birth_date
        now.year - dob.year #- ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
    end

    
end