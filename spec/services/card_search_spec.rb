require 'rails_helper'

RSpec.describe CardSearch do
  context "#with" do
    context "when no api token is provided" do
      it "generates FakeCardSearch" do
        card_search = CardSearch.with
    
        expect(card_search.class.name).to eq("FakeCardSearch")
      end 
    end 

    context "when an api token is provided" do
      it "generates CardSearch" do
        card_search = CardSearch.with(api_key: "a token")
    
        expect(card_search.class.name).to eq("CardSearch")
      end 
    end
  end

  context "#query" do
    it "makes a basic query" do
      card_name = "Pikachu"
      client = double()
      card_search = described_class.with(api_key: "a token", client: client)

      expect(client).to receive(:where).with(q: "card.name:#{card_name}")
      
      card_search.query(card_name)
    end
  end
end