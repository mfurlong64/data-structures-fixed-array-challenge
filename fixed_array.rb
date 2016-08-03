class OutOfBoundsException < StandardError; 
end

class FixedArray
	attr_reader :data, :size

	#new(size): Instantiate a new FixedArray with space for size elements.
	def initialize(size)
		@size = size
		@data = Array.new(size)
	end

	#get(index): Get a value from the array at the specified index. Throw an OutOFBoundsException if the user tries to get a value at an index outside the bounds of the fixed array.
	def get(index)
		raise OutOfBoundsException if index >= @size
		@data[index] 
	end

	#set(index, element): Set a value in the array at a specific index and return the element. Throw anOutOFBoundsException if the user tries to set a value at an index outside the bounds of the fixed array.
	def set(index, element)
		raise OutOfBoundsException if index >= @size
		@data[index] = element
	end

end

class ArrayList

	#new(size): Instantiate a new dynamic array with initial size size.
	def initialize(size)
		@size = size
		@data = Array.new(size)
	end

	#add(element): Add element to the end of the list. Return the element added.
	def add(element)
		@size += 1
		@data.push(element)
		return @data[-1]
	end

	#get(index): Get a value from the array at the specified index. Throw an OutOFBoundsException if the user tries to get a value at an index outside the bounds of the fixed array.
	def get(index)
		raise OutOfBoundsException if index >= @size
		@data[index] 
	end

	#set(index, element): Set a value in the array at a specific index and return the element. Throw anOutOFBoundsException if the user tries to set a value at an index outside the bounds of the fixed array.
	def set(index, element)
		raise OutOfBoundsException if index >= @size
		@data[index] = element
	end

	#length: Return the number of items in the list
	def length
		@data.length
	end

	#insert(index, element). #insert should insert the value element in the List at position index. 
	def insert(index, element)
		raise OutOfBoundsException if index >= @size
		@size += 1
		@data.insert(index, element)
	end
end

