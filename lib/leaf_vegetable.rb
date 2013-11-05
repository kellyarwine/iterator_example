require 'vegetable_iterator'

class Vegetable
	def create_iterator
		vegetable_iterator = VegetableIterator.new(all)
	end

	def all
		vegetable_collection = {}
		vegetable_collection["Carrot"] = "fresh"
		vegetable_collection["Red Bell Pepper"] = "expired"
		vegetable_collection["Celery"] = "fresh"
		vegetable_collection
	end
end