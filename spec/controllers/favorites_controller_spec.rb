require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do

  describe "GET #follows" do
    it "returns http success" do
      get :follows
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #followers" do
    it "returns http success" do
      get :followers
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #list" do
    it "returns http success" do
      get :list
      expect(response).to have_http_status(:success)
    end
  end

end
