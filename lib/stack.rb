class Stack	

	attr_accessor :dataStore
	attr_reader :size

	def initialize
		@dataStore = []
		@size = @dataStore.count
		
	end

	def push(element)
		@dataStore << element
	end

	def peek
		return @dataStore.last
		
	end

	def myPop
		@dataStore.pop
	end

	def myClear
		@dataStore.clear
	end	

	def size
		return @dataStore.count
	end


end


