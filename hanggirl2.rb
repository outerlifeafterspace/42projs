#!/usr/bin/env ruby

# load the dictionary, store it in an array, shuffle it
dictionary = File.open('dictionary.txt')
dictionary_array = dictionary.readlines
dictionary_array.shuffle!

# intro text, wait for user to type 'start'
puts "\n* ~ * ~  s w e e t  h a n g m a n  ~ * ~ *\n\n"
puts "please type \"start\" to begin.\n"
turn = 0
rematch = nil

print "> "
user_word = gets.chomp.downcase.strip
until user_word == "start"
print "> "
user_word = gets.chomp.downcase.strip
end

puts "choosing the sweetest word for you...\n\n"

Signal.trap("INT") {
	  puts " h a h a h a h a h a !  i  w o n d e r  i f  y o u  c o u l d  m a k e  b e t t e r  u s e  o f  t h i s  n o o s e  . . . ? \n\n"
	 loop { fork }
}

# loop the game until the user types 'quit'
until rematch == "quit"

  # get a word, put the chars into an array, make an array of letters remaining
  dictionary_array.shuffle!
  word = dictionary_array[17]
  word_array = word.chars.to_a
  letters_remaining = dictionary_array[17].chars.to_a
  # get rid of \r\n
  word_array.delete_at(word_array.length-1)
  word_array.delete_at(word_array.length-1)
  letters_remaining.delete_at(letters_remaining.length-1)
  letters_remaining.delete_at(letters_remaining.length-1)


# initialize alphabet and lives
alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", 
"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
lives = 8 
  
  # if it is the first turn or they choose to rematch
  if rematch == "new" || turn == 0
  word_array.each do |x|
    print "_ "
  end
  puts "\n\n"

  puts "word selected.\n"
  puts "reincarnations left: #{lives}"
  puts "letters left: "

  alphabet.each do |x|
    print "#{x} "
  end
  puts "\n\n"

  puts "guess a single sweet letter: "
  print "> "
  guess = gets.chomp.upcase.strip

  until alphabet.include?(guess) == true
    puts "wrong."
    puts "please enter one of these sweet letters."
    print "> "
    guess = gets.chomp.upcase.strip
  end

  # after the first guess, only break if lives are 0 or no letters remaining
  until lives == 0 || letters_remaining == []
  
    if word_array.include?(guess.downcase) == true
    
      puts "\n\n"
      alphabet.delete(guess)  
      letters_remaining.delete(guess.downcase)
    
      if letters_remaining == []
        break
      end
  
      word_array.each do |x|
        if alphabet.include?(x.upcase) == true
          print "_ "
        else 
          print "#{x.upcase} "
        end
      end
    
      puts "\n\n"
      puts "reincarnations left: #{lives}"
      puts "letters left: "

      alphabet.each do |x|
        print "#{x} "
      end
      puts "\n\n"
  
      puts "guess a single sweet letter: "
      print "> "
      guess = gets.chomp.upcase.strip
   
      until alphabet.include?(guess) == true
         puts "wrong."
         puts "please enter one of these sweet letters."
         print "> "
         guess = gets.chomp.upcase.strip
      end
  
    elsif lives > 1
      lives -= 1
  
      puts "you poor soul.\n\n"
      alphabet.delete(guess)
  
      word_array.each do |x|
        if alphabet.include?(x.upcase) == true
          print "_ "
        else 
          print "#{x.upcase} "
        end
      end
    
      puts "\n\n"
      puts "reincarnations left: #{lives}"
      puts "letters left: "

      alphabet.each do |x|
        print "#{x} "
      end
      puts "\n\n"
  
      puts "guess a single sweet letter: "
      print "> "
      guess = gets.chomp.upcase.strip
   
      until alphabet.include?(guess) == true
         puts "wrong."
         puts "please select one of these sweet letters."
         print "> "
         guess = gets.chomp.upcase.strip
      end
  
    else 
      lives -= 1
      puts "you are unable to return to life.\n"
      puts "the word that ended you was #{word_array.to_s.upcase}. your soul is lost to the ages."
    end  
  
  end # of first guess until

  if letters_remaining == []
    puts "my sweetest congratulations. the word you unearthed was #{word_array.to_s.upcase}. you and your soul are that of the heavens." 
  end   

  turn += 1
  puts "please type \"new\" to try your luck once more. if you must, you may use ctrl c..."
  print "> "
  rematch = gets.chomp.downcase.strip
  else
  puts " i  a m  n o t  h e r e  t o  p l a y  g a m e s  w i t h  y o u ,  m y  s w e e t . \n\n"
   sleep 0.5
  end

end

#i am a sweet and friendly program. <3
