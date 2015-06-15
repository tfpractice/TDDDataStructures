class Queue
	attr_accessor :dataStore

	def initialize
		@dataStore = []
		
	end

	def enqueue(element)
		@dataStore << element		
	end

	def dequeue
		return @dataStore.shift
	end
	def front
		return @dataStore[0]
		
	end

	def back
		return @dataStore.last
		
	end

	def isEmpty
		return @dataStore.empty?
	end

	def size
		return @dataStore.count
	end
end