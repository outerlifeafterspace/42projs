#!/usr/bin/env ruby

def great_births women_in_science
	women_in_science.sort_by {|key, value| value[:year_of_birth]}.each do |k,v|
		puts "#{v[:name]} is a great person born in #{v[:year_of_birth]}."
	end
end	

women_in_science = {
	:ada => { :name => "ada lovelace", :year_of_birth => "1815" },
	:cecilia => { :name => "cecilia payne", :year_of_birth => "1900" },
	:lise => { :name => "lise meitner", :year_of_birth => "1878" },
	:grace => { :name => "grace hopper", :year_of_birth => "1906" }
}

great_births women_in_science
