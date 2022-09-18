dictionary = ["hi", "how", "hen", "the", "say", "i", "hand", "are", "is", "you're", 
"you", "me", "we", "yesterday", "his", "your", "history", "what", "when", "low", "there", 
"in", "a", "find", "can", "go", "yes", "no", "when", "which", "handle", "below", "get", 
"look", "looking", "hat", "day", "and", "sand", "he", "water", "at", "ate", "going", "was"]

string = ""

def substrings(string, array)
    sub_count = {}
    string_array = string.downcase.split(" ")
    string_array.each do |string_word|
        array.each do |word|
          if string_word.include?(word)
            if sub_count[word] == nil
              sub_count[word] = 1
            else
              sub_count[word] += 1
            end
          end
        end
    end
    return sub_count
end


substrings("yesterday was a day in history", dictionary)