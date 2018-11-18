#!/usr/bin/env ruby

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


## multi-line commenting
=begin
## string interpolation
puts "Date: #{ticket.date}\n" + 
"Venue: #{ticket.venue}\n"  + 
"Event: #{ticket.event}\n"  + 
"Performer: #{ticket.performer}\n"  + 
"Seat: #{ticket.seat}\n"  + 
"Price: #{ticket.price}\n" 
=end


### 2.2.3 switching using messaging
puts "[+] Records: ", "date", "venue", "event", "performer", "seat", "price", ""
print "View which record?: "
request = gets.chomp #chomp removes newline
if ticket.respond_to?(request)
	puts ticket.send(request)
else
	puts "Record doesn't exist!"
end


