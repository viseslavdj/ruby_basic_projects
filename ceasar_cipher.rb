require "pry-byebug"

def ceasar_cipher(str,shift)
  char_array = str.chars.map{|c| c.ord}
  puts char_array.first.class
  shifted_array = char_array.map{|c| c + (shift%26)}
  for i in 0..shifted_array.length-1
   / Small letters wrapping /
    if (char_array[i] >= 97 && char_array[i] <= 122 && shifted_array[i] > 122)
      shifted_array[i] = shifted_array[i]-122+96
    end
    if (char_array[i] >= 65 && char_array[i] <= 90 && shifted_array[i] > 90)
      shifted_array[i] = shifted_array[i] - 90 + 64
    end
  end
  shifted_array.map{|c| c.chr}.join
end
puts ceasar_cipher("AbcaBCqrsad", 35)
puts ceasar_cipher("!asfsav dasf", 35)
puts ceasar_cipher("QqZzPp", 35)
