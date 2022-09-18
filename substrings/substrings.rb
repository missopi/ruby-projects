dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

string = ""

def substrings(string, array)
  sub_count = Hash.new { |h, k| h[k] = 0 }
  array.each do |word|
    string.downcase.include?(word)
    if sub_count[word] == nil
      sub_count[word] = 1
    else
      sub_count[word] += 1
    end
  end
  return sub_count
end


substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)