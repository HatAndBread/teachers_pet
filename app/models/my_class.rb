class MyClass < ApplicationRecord
    has_many :students
    validates :my_class_title, presence: true, uniqueness: {message: "That class name already exists"}
end
