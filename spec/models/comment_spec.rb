require 'rails_helper'

RSpec.describe Comment, type: :model do
    it "adds comment with valid information" do
      expect(build(:comment)).to be_valid
    end
  
    it "invalids when comment field is blank" do
      expect(build(:comment, comment: '')).to be_invalid
    end
  
    it "invalids when user field is null" do
      expect(build(:comment, user: nil)).to be_invalid
    end
  
    it "invalids when message field is null" do
      expect(build(:comment, message: nil)).to be_invalid
    end
end
