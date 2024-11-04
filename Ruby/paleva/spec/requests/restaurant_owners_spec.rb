require 'rails_helper'

RSpec.describe "RestaurantOwners", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/restaurant_owners/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/restaurant_owners/create"
      expect(response).to have_http_status(:success)
    end
  end

end
