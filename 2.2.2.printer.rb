#!/usr/bin/env ruby
require_relative '2.2.1_ticket'

ticket = Object.new
def ticket.date
	'01/02/03'
end
def ticket.venue
	'Town Hall'
end
def ticket.event
	"Author's reading"
end
def ticket.performer
	"Mark Twain"
end
def ticket.seat
	"Second Balcony, row J, seat 12"
end
def ticket.price
	"5.50"
end
def ticket.available?
	true
end

puts "#{ticket.available?}"
