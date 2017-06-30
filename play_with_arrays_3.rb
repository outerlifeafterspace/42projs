#!/usr/bin/env ruby

array = [3, 1, 4, 1, 5, 9]
p array
res = [ ]
array.map {|x| res << x + 2}
 p res.uniq.select {|x| x>5}
