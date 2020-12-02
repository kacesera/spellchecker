class SpellCheck

  def initialize(sentence)
    @sentence = sentence.split
  end

  def check_spelling
    example = "My spelling is great".split
    @sentence.map! do |word|
      if !example.include?(word)
        "~#{word}~"
      else
        word
      end
    end
    @sentence.join(" ")
  end

end