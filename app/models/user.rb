class User < ApplicationRecord
    has_many :my_classes

    validates :username, :password, :email, presence: true
    validates :username, :email, uniqueness: {message: 'That name name or email address is aleady in use. Please login to continue.'}

end
