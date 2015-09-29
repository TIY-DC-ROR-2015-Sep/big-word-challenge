require 'pry'

class WordCounter
  def initialize length, word_array
    @length = length
    @whatever_i_want = word_array
  end

  def word_length
    @length
  end

  def count_of_words_matching_length
    # @whatever_i_want.select { |w| w.length == 5 }.count
    count = 0
    @whatever_i_want.each do |word|
      if word.length == @length
        count = count + 1
      end
    end
    count
  end
end

dictionary = File.read("/usr/share/dict/words").split
  # => ["A", "a", "aa", "aal", "aalii", "aam", "Aani", "aardvark", ...]
wc = WordCounter.new 5, dictionary

puts "Finding words of length #{wc.word_length} ..."
puts "There are #{wc.count_of_words_matching_length}"
