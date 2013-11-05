require 'fruit'

class FruitIterator
  attr_accessor :index, :fruit_list

  def initialize(fruit_list)
    @fruit_list = fruit_list
    @index = -1
  end

  def next
    @index += 1
    @fruit_list[@index]
  end

  def has_next
    @fruit_list.count - 1 > @index
  end
end