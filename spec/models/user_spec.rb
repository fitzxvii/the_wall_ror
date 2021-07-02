require 'rails_helper'

RSpec.describe User, type: :model do
    it "creates new user when username is valid" do
        expect(build(:user)).to be_valid
    end

    it "invailds when username is less than 5 characters" do
        expect(build(:user, username: "user")).to be_invalid
    end

    it "invalids when creating a username that is already exists" do
        create(:user)
        expect(build(:user)).to be_invalid
    end
end
