require 'vegetable'

class VegetableIterator
  attr_accessor :index, :vegetable_hash

  def initialize(vegetable_hash)
    @vegetable_list = vegetable_hash.keys
    @index = -1
  end

  def next
    @index += 1
    @vegetable_list[@index]
  end

  def has_next
    @vegetable_list.count - 1 > @index
  end
end