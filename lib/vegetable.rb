require 'vegetable_iterator'

class Vegetable
  attr_reader :vegetable_iterator, :all

  def add(vegetable_hash)
    @all = vegetable_hash
  end

  def create_iterator
    @vegetable_iterator = VegetableIterator.new(@all)
  end
end