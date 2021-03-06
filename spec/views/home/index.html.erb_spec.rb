require "rails_helper"

describe "home/index.html.erb" do
  it "displays all the widgets" do
    render
    expect(rendered).to match("Welcome to Pokemon Deck Builder")
  end
end