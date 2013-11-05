require 'iterator_example'

describe IteratorExample do
  let (:fruit_list)     { ["Apple", "Orange", "Pear"] }
  let (:vegetable_hash) {
                          {
                            "Carrot" => "Fresh",
                            "Red Bell Pepper" => "Expired",
                            "Celery" => "Fresh"
                          }
                        }
  let (:pod_vegetables) {
                          {
                            "Green Beans" => "Expired",
                            "Wax Beans" => "Fresh",
                            "Runner Beans" => "Expired",
                            "Mange-Tout Peas" => "Expired"
                          }
                        }
  let (:iterator_example) { IteratorExample.new() }

  it "returns a list of fruits and vegetables" do
    fruit = Fruit.new
    fruit.add(fruit_list)
    vegetable = Vegetable.new
    vegetable.add(vegetable_hash)
    iterator_example.list_foods([fruit, vegetable]).should == ["Apple", "Orange", "Pear", "Carrot", "Red Bell Pepper", "Celery"]
  end
end
