class Student < ApplicationRecord
    belongs_to :my_class
    validates :first_name, presence: true
    validates :last_name, presence: true
end
