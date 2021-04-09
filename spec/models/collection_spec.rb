require 'rails_helper'

RSpec.describe Collection, :type => :model do
  it "is valid with title" do
    collection = Collection.new(title: "A Collection")
    
    expect(collection.valid?).to be_truthy
  end
end