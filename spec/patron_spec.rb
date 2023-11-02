require './lib/exhibit'
require './lib/patron'

RSpec.describe Patron do
  it "exists" do
    patron_1 = Patron.new("Bob", 20)

    expect(patron_1).to be_a(Patron)
  end

  it "has a name and spending money attribute" do
    patron_1 = Patron.new("Bob", 20)

    expect(patron_1.name).to eq("Bob")
    expect(patron_1.spending_money).to eq(20)
  end

  it "has an interests attribute" do
    patron_1 = Patron.new("Bob", 20)

    expect(patron_1.interests).to be_a(Array)
  end

  it "has a method that can add interests" do
    patron_1 = Patron.new("Bob", 20)
    patron_1.add_interest("Dead Sea Scrolls")
    patron_1.add_interest("Gems and Minerals")
    expect(patron_1.interests).to eq(["Dead Sea Scrolls", "Gems and Minerals"])
  end
end
