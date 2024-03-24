require 'rails_helper'

RSpec.describe "ContactForms", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/contact_form/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/contact_form/create"
      expect(response).to have_http_status(:success)
    end
  end

end
