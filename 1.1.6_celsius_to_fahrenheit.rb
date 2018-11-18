#!/usr/bin/env ruby

NOTES='''
print "Celsius?: "
C = gets.to_i
print "Celsius: ", C.to_s, ", Fahrenheit: ", C * 9 / 5 + 32, ".\n"
'''

in_file = File.open("temps.dat", "r")
F = in_file.read.split()
O = File.new("temps.out", "w")

F.each do |i|
	print "Celsius: ", i.to_i, ", Fahrenheit: ", i.to_i * 9 / 5 + 32, "\n"
	O.print "Celsius: ", i.to_i, ", Fahrenheit: ", i.to_i * 9 / 5 + 32, "\n"
end

