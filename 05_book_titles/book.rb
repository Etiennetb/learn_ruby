#correction Felix

class Book
  attr_accessor :title

  def initialize
    @title
  end

  def title=(titre)
    array_of_words = titre.split(" ")
    array_of_words.each do |word|
      word.capitalize! unless is_a_small_word?(word)
    end
    array_of_words[0].capitalize!
    @title = array_of_words.join(" ")
  end

  private

    def is_a_small_word?(word)
      ["the", "a", "an", "and", "in", "of"].include? word
    end

end
