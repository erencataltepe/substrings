def substrings(search_word, dictionary)
  search_arr = search_word.downcase.split(" ")
  result_hash = Hash.new(0)

  dictionary.each do |word|
    search_arr.each do |search_word|
      if search_word.include?(word)
        result_hash[word] += 1
      end
    end
  end

  result_hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)