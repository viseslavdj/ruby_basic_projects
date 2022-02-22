require "pry-byebug"

def substrings(text, dict)
  words = text.downcase.split(" ")
  count_words = Hash.new(0)

  words.each do |word|
    dict.each do |dict_word|
      if word.include?(dict_word)
        count_words[dict_word] +=1
      end
    end
  end

  return count_words
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
