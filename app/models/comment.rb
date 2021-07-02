class Comment < ApplicationRecord
    validates :comment, length: { minimum: 5 , message: "Comment must be minimum of 5 characters."}
    validates :message, :user, presence: true
    belongs_to :message
    belongs_to :user
end
