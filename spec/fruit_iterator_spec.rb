require 'fruit_iterator'

describe FruitIterator do
  context "next" do
  before(:all) do
    fruit_list = ["Apple", "Banana", "Golden Kiwi"]
    @fruit_iterator = FruitIterator.new(fruit_list)
  end

    it "returns the next fruit" do
      @fruit_iterator.next.should == "Apple"
    end

    it "returns the next fruit" do
      @fruit_iterator.next.should == "Banana"
    end
  end

  context "has_next" do
    before(:each) do
      fruit_list = ["Apple", "Banana", "Golden Kiwi"]
      @fruit_iterator = FruitIterator.new(fruit_list)
    end

    it "returns true when another element exists" do
      @fruit_iterator.has_next.should == true
      @fruit_iterator.next
    end

    it "returns true after next is called and the index is at the second position in the list" do
      @fruit_iterator.next
      @fruit_iterator.has_next.should == true
    end

    it "returns true after next is called twice and the index is at the third position in the list" do
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.has_next.should == true
    end

    it "returns false after next is called 3 times and the index is at the end of the list" do
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.has_next.should == false
    end

    it "returns false after next is called 4 times and the index is one past the end of the list" do
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.next
      @fruit_iterator.has_next.should == false
    end
  end
end