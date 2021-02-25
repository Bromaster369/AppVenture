class User < ApplicationRecord
    has_secure_password
    has_many :experiences
    has_many :comments
    has_many :commented_experiences, through: :comments, source: :experience
    has_many :categories, through: :experiences

    validates :username, :email, presence: true

end
