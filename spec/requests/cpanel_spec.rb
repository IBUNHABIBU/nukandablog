require 'rails_helper'

RSpec.describe "Cpanels", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/cpanel/index"
      expect(response).to have_http_status(:success)
    end
  end

end
