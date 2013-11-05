require 'vegetable_iterator'

describe VegetableIterator do
  context "next" do
  before(:all) do
    vegetable_hash = {"Carrot" => "Fresh",
                      "Red Bell Pepper" => "Expired",
                      "Celery" => "Fresh"}
    @vegetable_iterator = VegetableIterator.new(vegetable_hash)
  end

    it "returns the next vegetable" do
      @vegetable_iterator.next.should == "Carrot"
    end

    it "returns the next vegetable" do
      @vegetable_iterator.next.should == "Red Bell Pepper"
    end
  end

  context "has_next" do
    before(:each) do
    vegetable_hash = {"Carrot" => "Fresh",
                      "Red Bell Pepper" => "Expired",
                      "Celery" => "Fresh"}
    @vegetable_iterator = VegetableIterator.new(vegetable_hash)
    end

    it "returns true when another element exists" do
      @vegetable_iterator.has_next.should == true
      @vegetable_iterator.next
    end

    it "returns true after next is called and the index is at the second position in the list" do
      @vegetable_iterator.next
      @vegetable_iterator.has_next.should == true
    end

    it "returns true after next is called twice and the index is at the third position in the list" do
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.has_next.should == true
    end

    it "returns false after next is called 3 times and the index is at the end of the list" do
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.has_next.should == false
    end

    it "returns false after next is called 4 times and the index is one past the end of the list" do
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.next
      @vegetable_iterator.has_next.should == false
    end
  end
end