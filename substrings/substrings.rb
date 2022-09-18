dictionary = ["hi", "how", "hen", "the", "say", "i", "hand", "are", "is", "you're", 
"you", "me", "we", "yesterday", "his", "your", "history", "what", "when", "low", "there", 
"in", "a", "find", "can", "go", "yes", "no", "when", "which", "handle", "below", "get", 
"look", "looking", "hat", "day", "and", "sand", "he", "water", "at", "ate", "going", "was"]

string = ""

def substrings(string, array)
    string_array = string.downcase.split(" ")
    sub_compare = string_array.intersection(array)
    sub_count = sub_compare.tally
end


substrings("yesterday was a day in history", dictionary)