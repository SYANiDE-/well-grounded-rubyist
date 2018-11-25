#!/usr/bin/env ruby


module TestModule
	# when include, extend, or prepend, from a class, will include methods defined in the
	# module in the class and be available as instance methods.
	def ruby_version
		system("ruby -v")
	end
end

class Tester
	include TestModule
end



### testing
Dummy = Tester.new
puts Dummy.ruby_version
