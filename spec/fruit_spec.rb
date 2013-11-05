require 'fruit'

describe Fruit do
  before(:each) do
    @fruit = Fruit.new
    @fruits = ["Strawberry", "Watermelon"]
    @fruit.add(@fruits)
  end

  it "adds a fruit" do
    @fruit.all.should == ["Strawberry", "Watermelon"]
  end

  it "creates an iterator" do
    @fruit.create_iterator
    @fruit.fruit_iterator.should be_a_kind_of FruitIterator
  end
end