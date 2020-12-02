require 'csv'

class SpellCheck

  def initialize(sentence)
    @sentence = sentence.split
    @dictionary = []
    File.foreach('./dictionary/words.csv') { |line| @dictionary << line.chomp }
  end

  def check_spelling
    @sentence.map! do |word|
      if !@dictionary.include?(word.downcase)
        "~#{word}~"
      else
        word
      end
    end
    @sentence.join(" ")
  end

end