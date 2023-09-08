def decode_char(char)
  code_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }
  code_morse[char]
end
def decode_word(word)
  word = word.split
  decoded_word = ''
  word.each do |letter|
    decoded_word += decode_char(letter)
  end
  decoded_word
end
def decode(sentence)
  decoded_sentence = ''
  sentence = sentence.split('   ')
  sentence.each do |word|
    decoded_sentence += " #{decode_word(word)}"
  end
  puts decoded_sentence.strip
end
decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')









