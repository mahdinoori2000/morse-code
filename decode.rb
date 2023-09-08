print 'mahdi'


def decode_word(word)
    word = word.split(" ")
    decoded_word = ""
    word.each do |letter|
        decoded_word += decode_char(letter)
    end
    decoded_word
end
def decode(sentence)
    decoded_sentence = ""
    sentence = sentence.split("   ")
    sentence.each do |word|
        decoded_sentence += " #{decode_word(word)}"
    end
    print decoded_sentence
end
decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")

