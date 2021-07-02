require 'rails_helper'

RSpec.describe Message, type: :model do
    it "creates a message with valid information" do
        expect(build(:message, user: build(:user))).to be_valid
    end

    it "invalids when message content is less than 10 characters" do
        expect(build(:message, message: "less", user: build(:user))).to be_invalid
    end

    it "invalids when user is null" do
        expect(build(:message, user: nil)).to be_invalid
    end
end
