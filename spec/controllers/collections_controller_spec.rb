require 'rails_helper'

RSpec.describe CollectionsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    let(:collection_title) { "A Collection Title" }

    it "creates a collection" do
      post :create, params: { title: collection_title }
      expect(Collection.last.title).to eq(collection_title)
    end

    it "redirects to collection #show" do
      post :create, params: { title: collection_title }
      expect(response).to be_redirect
    end
  end
end