def anagram?(x, y)
    word1 = x.downcase.split("").sort
    word2 = y.downcase.split("").sort

    word1 == word2
end

def find_anagrams(x, y)
  word1 = x.downcase.split("").sort.join
  word_array = []
  y.each do |word|
    if word1 == word.downcase.split("").sort.join
      word_array.push(word)
    end
  end
  word_array
end

