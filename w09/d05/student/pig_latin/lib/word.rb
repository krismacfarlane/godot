class Word
  def initialize(original_word)
    @original_word = original_word
  end

  def piglatinize
    word_arr = @original_word.split("")

    if word_arr[0] == "a" || word_arr[0] == "e" || word_arr[0] == "i" || word_arr[0] == "o" || word_arr[0] == "u" || word_arr[0] == "y"
      word_arr.push("way")
      new_word = word_arr.join
    else
      first_letter = word_arr.shift
      word_arr.push(first_letter)
      word_arr.push("ay")
      new_word = word_arr.join
    end
  end


end
