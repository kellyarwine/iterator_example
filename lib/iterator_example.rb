require 'fruit_iterator'
require 'vegetable_iterator'

class IteratorExample
  def list_foods(types)
    foods = []

    types.each do |type|
      klass = Object.const_get(type)
      iterator = klass.new.create_iterator
      while iterator.has_next == true
        foods << iterator.next
      end
    end

    foods
  end
end
