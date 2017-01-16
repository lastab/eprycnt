class Encryptor
  
  def initilize(sentence)
    @sentence = sentence
    @snetnece = []
    encrypt(@sentence)
    puts @snetnece
  end

  private

  def encrypt(word_array)
    devide_to_words(@sentence).each do |word|
      @snetnece.append shuffle(word)
    end
  end

  def devide_to_words(sentence)
    sentence.split(' ')
  end

  def shuffle(word)
    letter_array = word.scan /\w/
    return word if letter_array.length <= 2
    middle_letters = letter_array[1...-1]
    middle_letters.shuffle!
    middle_letters.unshift(word[0])
    middle_letters.push(word[-1])
    middle_letters.join
  end
end
