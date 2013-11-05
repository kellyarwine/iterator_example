require 'fruit_iterator'
require 'vegetable_iterator'

class IteratorExample
  def list_foods(types)
    foods = []

    types.each do |type|
      iterator = type.create_iterator
      while iterator.has_next == true
        foods << iterator.next
      end
    end

    foods
  end
end
