require 'iterator_example'

describe IteratorExample do
  let (:iterator_example) { IteratorExample.new }

  it "returns null when an empty directory is input" do
    iterator_example.list_foods(["Fruit", "Vegetable"]).should == ["Apple", "Banana", "Golden Kiwi", "Carrot", "Red Bell Pepper", "Celery"]
  end
end
