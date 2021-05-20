class WordFilter
  def initialize(words)
      @words = words
  end

  def f(prefix, suffix)
    new_words = @words.select do |word| 
      word[0..prefix.length - 1] == prefix && word[(word.length - suffix.length)..-1] == suffix
    end
    if new_words != []
      word = new_words[-1]
      return @words.index(word)
    else
      return -1
    end 
  end
end