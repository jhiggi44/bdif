require 'rails_helper'

RSpec.describe CollectionsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    before do 
      expect(Collection.all.size).to eq(0)
    end

    it "creates a collection" do
      post :create, params: { card_ids: [1, 2] }
      expect(Collection.all.size).to eq(1)
    end

    it "redirects to collection #show" do
      post :create, params: { card_ids: [1, 2] }
      expect(response).to be_redirect
    end
  end
end