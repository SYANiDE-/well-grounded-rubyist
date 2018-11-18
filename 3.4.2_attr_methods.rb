#!/usr/bin/env ruby

class GetSet
	attr_reader :one, :two, :three  #creates reader methods
	attr_writer :four, :five, :six	#creates writer methods
	attr_accessor :seven, :eight	#creates reader/writer methods
end

T = GetSet.new()
puts T.one
puts T.seven
T.seven = 32
puts T.seven

