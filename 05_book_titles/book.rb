class Book
  attr_accessor :title

  def title
    words = @title.split
    words.map do |word|
      little_words = ['and','the', 'of', 'a', 'an', 'in']
      unless little_words.include?(word)
        word.capitalize!
      end
    end
    words[0].capitalize!
    words.join(' ')
  end
end
