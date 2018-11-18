#!/usr/bin/env ruby

class TIMEDATE
	def initialize(time, date)
		@time = time
		@date = date
	end
	def time
		@time
	end
	def date
		@date
	end
	def time=(ref)
		@time = ref
	end
	def date=(ref)
		@date = ref
	end
end


