#!/usr/bin/env ruby

def find_the_gingers names
	gingers = []
	names.each do |key, value|
		if value == :red
			gingers.push(key)
		end
	end
	return gingers
end

Dupont_family = {
	"matthew" => :red,
	"mary" => :blonde,
	"virginia" => :brown,
	"gaetan" => :red,
	"fred" => :red,
}

p find_the_gingers Dupont_family
