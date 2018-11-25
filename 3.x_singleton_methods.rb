#!/usr/bin/env ruby
# TestClass.printer is the singleton method!

class TestClass
		attr_reader :donut, :bagel
		attr_writer :pancake, :waffle
		attr_accessor :cupcake, :pastry
	def initialize				
		@donut = "Cream-filled"
		@bagel = "Sourdough"
		puts "Value for 'pancake'?"
		@pancake =gets.chomp()
		puts "Value for 'waffle'?"
		@waffle = gets.chomp()
		puts "Value for 'cupcake'?"
		@cupcake = gets.chomp()
		puts "Value for 'pastry'?"
		@pastry = gets.chomp()
		puts "[!] Now writing to write-only variables 'pancake', 'waffle', 'cupcake',  and 'pastry'."
	end
	def reader
		return @donut, @bagel, @pancake, @waffle, @cupcake, @pastry
	end
end


def TestClass.printer(*args)
	# TestClass.printer is the singleton method!
	@donut, @bagel, @pancake, @waffle, @cupcake, @pastry = args
	puts "[!] Now reading back the values"
	puts "[.]"
	puts "donut: #{@donut}\nbagel: #{@bagel}\npancake: #{@pancake}\nwaffle: #{@waffle}\ncupcake: #{@cupcake}\npastry: #{@pastry}\n"
end




###  Testing...
Accessory = TestClass.new
# Accessory.printer   # This FAILS!   It's not an instance method, it's a class method (TestClass.printer)

TestClass.printer(*Accessory.reader())    ### note the *... this expands the list out to individual elements.

