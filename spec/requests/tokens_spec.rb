require 'rails_helper'

RSpec.describe "Tokens", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/tokens/create"
      expect(response).to have_http_status(:success)
    end
  end

end
