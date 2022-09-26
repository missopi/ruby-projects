dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, array)
  sub_count = Hash.new { |k, v| k[v] = 0 }
  array.each do |word|
    sub_count[word] += 1 if string.downcase.include?(word)
  end
  sub_count
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
