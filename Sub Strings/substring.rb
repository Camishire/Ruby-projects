def substrings(search_in, search_for=nil)
  array_of_words = search_in.split()
  array_of_words.each {|word| word.gsub!(/[!@%&,?"]/, '') }
  
  array_of_counts = Hash.new(0)
  array_of_words.each {|word|
    array_of_counts[word]+=1
  }

  if search_for.empty?
    puts array_of_counts
  else
    puts array_of_counts[search_for]
  end
end

puts "Enter the string you want to search"
search_in = gets.chomp

puts "Enter the word you want to find (or leave blank if you want to count all words)"
search_for = gets.chomp

substrings(search_in, search_for)