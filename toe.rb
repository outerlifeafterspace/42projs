#!/usr/bin/env ruby

def colorize(text, color_code)
	"\e[#{color_code}m#{text}\e[0m"
	end
def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end
def blue(text); colorize(text, 34); end
def yellow(text); colorize(text, 33); end
def cyan(text); colorize(text, 36); end
def white(text); colorize(text, 37); end
def blink(text); colorize(text, 5); end
win = "nom"
layout = [nil, 1, 2, 3, 4, 5, 6, 7, 8, 9]
play = "p1"

puts "welcome 2 the  t i c  t a c  z o n e "
print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
puts "\n"
print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
puts "\n"
print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
puts "\n"

while win == "nom"
	while play == "p1"
		print "what's your move, dude? pick 1 thru 9. "
		ans = gets.chomp.to_i
		puts ans
		if ans >= 10
			puts "too big dude :/"
		else
			if ans <= 0
				puts "too small dude :/"
			else
				if layout[ans] == "X"
					puts "they already filled that space ya bingus"
				else 
					if layout[ans] == "O"
						puts "you already filled that space ya bingus"
					else
						layout[ans] = "X"
						play = "p2"
					end
				end
			end
		end
	end
	if layout[1].to_i + layout[2].to_i + layout[3].to_i + layout[4].to_i + layout[5].to_i + layout[6].to_i + layout[7].to_i + layout[8].to_i + layout[9].to_i == 0
		win = "the_cat"
		 play "p0"
	end
	
	if layout[1].to_s + layout[2].to_s + layout[3].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout [4].to_s + layout[5].to_s + layout[6].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[7].to_s + layout[8].to_s + layout[9].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[1].to_s + layout[4].to_s + layout[7].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[2].to_s + layout[5].to_s + layout[8].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[3].to_s + layout[6].to_s + layout[9].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[1].to_s + layout[5].to_s + layout[9].to_s == "XXX"
		win = "p1"
		play = "p1"
	elsif layout[3].to_s + layout[5].to_s + layout[7].to_s == "XXX"
		win = "p1"
		play = "p1"

	else
		puts "\n"
		print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
		puts "\n"
		print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
		puts "\n"
		print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
		puts "\n"
	end

	while play == "p2"
		print "what's your move, other dude? pick 1 thru 9. "
			ans = gets.chomp.to_i
			puts ans
					if ans >= 10
							puts "too big other dude :/"
					else
							if ans <= 0
								puts "too small other dude :/"
							else
									if layout[ans] == "X"
										puts "they already filled that space ya other bingus"
									else
											if layout[ans] == "O"
													puts "you already filled that space ya other bingus"
											else
													layout[ans] = "0"
													play = "p1"
											end
									end
							end
					end
	end
end

		if layout[1].to_s + layout[2].to_s + layout[3].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[4].to_s + layout[5].to_s + layout[6].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[7].to_s + layout[8].to_s + layout[9].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[1].to_s + layout[4].to_s + layout[7].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[2].to_s + layout[5].to_s + layout[8].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[3].to_s + layout[6].to_s + layout[9].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[1].to_s + layout[5].to_s + layout[9].to_s == "OOO"
			win = "p2"
			play = "p2"
		elsif layout[3].to_s + layout[5].to_s + layout[7].to_s == "OOO"
			win = "p2"
			play = "p2"
		else
			puts "\n"
			print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
			puts "\n"
			print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
			puts "\n"
			print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
			puts "\n"
		end
			puts "\n"
			 print "#{layout[1]} | #{layout[2]} | #{layout[3]}"
			 	puts "\n"
					 print "#{layout[4]} | #{layout[5]} | #{layout[6]}"
					 puts "\n"
					print "#{layout[7]} | #{layout[8]} | #{layout[9]}"
				puts "\n"
if win == "p1"
	puts "sick, dude 1 wins! i hope you got what you deserved."
elsif win == "p2"
	puts "nice, dude 2 wins! but did it fill the aching void in your chest?"
elsif win == "the_cat"
puts "you're both losers. not that it matters. cosmically, i mean. in time, the universe will succumb to its inevitable fate of entropy, so what does it matter?"

end



