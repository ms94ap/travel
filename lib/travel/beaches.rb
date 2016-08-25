class Beach
	attr_accessor :name, :location, :best_time
  
	def initialize(name, location, best_time)
		@name = name 
		@location = location
		@best_time = best_time
	end
end