# Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase

$morse_alphabet = {".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K",".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z"}

def decode_letter(code)
  if code.is_a?(String)
    if $morse_alphabet[code] != nil
      puts $morse_alphabet[code]
    else
      puts "Please introduce a valid morse character"
    end
  else
    puts "Please, introduce a string"
  end
end

decode_letter(".-")