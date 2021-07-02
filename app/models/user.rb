class User < ApplicationRecord
    validates :username, length: { minimum: 6,  message: "Username must be minimum of 6 characters." }, uniqueness: { message: "Username already taken." }
    has_many :messages
    has_many :comments
end
