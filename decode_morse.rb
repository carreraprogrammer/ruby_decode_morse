# Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase

$morse_alphabet = {".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K",".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z"}

def decode_letter(code)
  if code.is_a?(String)
    if $morse_alphabet[code] != nil
      print $morse_alphabet[code]
    else
      puts "Please introduce a valid morse character"
    end
  else
    puts "Please, introduce a string"
  end
end


# Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation. Every character in a word will be separated by a single space

def decode_word(code)
  array = code.split(" ")
  word = ""
  array.each do |c|
    letter = decode_letter(c)
    word.concat(letter) unless letter.nil?
  end
  puts word
end

decode_word("-- -.--")  # => "MY"
