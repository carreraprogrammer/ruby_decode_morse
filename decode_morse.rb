# Create a method to decode a Morse code character

def decode_letter(code)
  morse_alphabet = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z'
  }

  if code.is_a?(String)
    if !morse_alphabet[code].nil?
      print morse_alphabet[code]
    else
      puts 'Please introduce a valid morse character'
    end
  else
    puts 'Please, introduce a string'
  end
end

# Create a method to decode an entire word in Morse code

def decode_word(code)
  array = code.split(' ')
  word = ''
  array.each do |c|
    letter = decode_letter(c)
    word.concat(letter) unless letter.nil?
  end
  puts word
end

decode_word('-- -.--') # => "MY"
