#!/usr/bin/env ruby

def greetmethod name= "noble stranger"
	if name.is_a? String
		puts "hello, #{name}."
	else
		puts "error! that doesn't sound like a name."
	end
end

greetmethod "lucie"
greetmethod
greetmethod 22
