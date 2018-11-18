#!/usr/bin/env ruby
require "./2.5.3_references.rb"


ject1 = TIMEDATE.new("12:23:15", "11/7/2018")
puts ject1.time
puts ject1.date
ject1.date = "09/15/2007"
ject1.time = "01:15:03"
puts ject1.time
puts ject1.date
day, month, year = ject1.date.split("/")
hour, min, sec = ject1.date.split(":")
puts """Day: #{day}
Month: #{month}
year: #{year}"""
