require 'rails_helper'

RSpec.describe Card, type: :model do
  it "is valid with name and external_reference" do
    card = Card.new(external_ref: "xy1-1", name: "Pikachu")
    
    expect(card.valid?).to be_truthy
  end
end
