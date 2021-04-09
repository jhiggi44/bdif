require 'rails_helper'

RSpec.describe CardSearch do
  it "generates FakeCardSearch when no api token is provided" do
    card_search = CardSearch.with(nil)

    expect(card_search.class.name).to eq("FakeCardSearch")
  end
end