require 'fruit_iterator'

class Fruit
  attr_reader :fruit_iterator

  def create_iterator
    fruit_iterator = FruitIterator.new(all)
  end

  def all
    fruit_collection = []
    fruit_collection << "Apple"
    fruit_collection << "Banana"
    fruit_collection << "Golden Kiwi"
    fruit_collection
  end
end