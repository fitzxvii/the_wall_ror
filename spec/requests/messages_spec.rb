require 'rails_helper'

RSpec.describe "Messages", type: :request do
  describe "GET /wall" do
    it "returns http success" do
      get "/messages/wall"
      expect(response).to have_http_status(:success)
    end
  end

end
