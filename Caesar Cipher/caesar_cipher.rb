# frozen_string_literal: true

def ceaser_cypher(given_string, move_by)
  alphabet = ('a'..'z').to_a
  numalph = alphabet.length
  new_string = ''
  given_string.each_char do |char|
    index = alphabet.find_index(char.downcase)
    if index.nil?
      new_string += char
    elsif index + move_by.to_i < numalph
      new_string += alphabet[index + move_by]
    else
      index = (index + move_by) - numalph
      new_string += alphabet[index]
    end
  end
  new_string
end

print 'Enter the string to encrypt: '
given_string = gets.chomp

print 'Enter the shift amount: '
move_by = gets.chomp.to_i

result = ceaser_cypher(given_string, move_by)
puts result
