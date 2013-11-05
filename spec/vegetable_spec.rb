require 'vegetable'

describe Vegetable do
  before(:each) do
    @vegetable = Vegetable.new
    @vegetables = {
                    "Carrot" => "Fresh",
                    "Spinach" => "Expired"
                  }
    @vegetable.add(@vegetables)
  end

  it "adds a vegetable" do
    @vegetable.all.should == @vegetables
  end

  it "creates an iterator" do
    @vegetable.create_iterator
    @vegetable.vegetable_iterator.should be_a_kind_of VegetableIterator
  end
end