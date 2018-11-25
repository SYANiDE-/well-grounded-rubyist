#!/usr/bin/env ruby
#

module Stacker
	def stack
		@stack ||= []
	end
	def push(obj)
		stack.push(obj)
	end
	def pop
		stack.pop
	end
end

class Stack
	include Stacker
end



### example
targ = Stack.new
puts "[#] Pushing 51 on stack"
targ.push(51)
puts "[#] Pushing 66 on stack"
targ.push(66)
puts "[#] Pushing 82 on stack"
targ.push(82)
wang = targ.pop
puts "[!] Popped #{wang} off stack"
wang = targ.pop
puts "[!] Popped #{wang} off stack"
wang = targ.pop
puts "[!] Popped #{wang} off stack"

