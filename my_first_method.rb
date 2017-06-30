#!/usr/bin/env ruby

if ARGV.count == 0
	puts "none"
	exit
end

stuff = ARGV[0]

def babymethod (words)
   if words.size == 0
	   puts "none"
   end	
   if words.size < 10
	   puts "nil"
  else
	  puts words.upcase
   end
end

babymethod stuff
