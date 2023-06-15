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
      morse_alphabet[code]
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
  word
end

# Create a method to decode the entire message in Morse code

def decode_message(code)
  words = code.split('   ').map do |c|
    decode_word(c)
  end
  message = words.join(' ')
  puts message
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') #=> "A BOX FULL OF RUBIES"
