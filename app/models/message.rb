class Message < ApplicationRecord
    validates :message, length: { minimum: 10 , message: "Message must be minimum of 10 characters."}
    belongs_to :user, required: true
    has_many :comments
end
