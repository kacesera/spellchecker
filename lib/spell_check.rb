require 'csv'

class SpellCheck

  def initialize(sentence)
    @sentence = sentence.split
    @dictionary = []
    File.foreach('./dictionary/words.csv') { |line| @dictionary << line.chomp }
  end

  def check_spelling
    @sentence.map! do |word|
      check_word(word)
    end
    highlighted_sentence
  end

  private

  def check_word(word)
    if !dictionary_has?(word)
      "~#{word}~"
    else
      word
    end
  end

  def highlighted_sentence
    @sentence.join(" ")
  end

  def dictionary_has?(word)
    @dictionary.include?(word.downcase)
  end

end