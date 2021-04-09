require 'rails_helper'

RSpec.describe CardsController, type: :controller do
  describe "GET #search" do
    let(:card_name) { "pikachu" }

    it "returns a list of cards" do
      get :search, params: { name: card_name }
      
      json = JSON.parse(response.body)
      expect(json.first).to eq({name: "Pikachu", id: "basep-1"}.with_indifferent_access)
    end
  end
end