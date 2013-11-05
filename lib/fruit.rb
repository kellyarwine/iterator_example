require 'fruit_iterator'

class Fruit
  attr_reader :fruit_iterator, :all

  def add(fruit_list)
      @all = fruit_list
  end

  def create_iterator
    @fruit_iterator = FruitIterator.new(@all)
  end
end