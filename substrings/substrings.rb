dictionary = ["hi", "how", "hen", "the", "say", "i", "hand", "are", "is", "you're", 
"you", "me", "we", "yesterday", "his", "your", "history", "what", "when", "low", "where", 
"in", "find", "can", "go", "yes", "no", "when", "which", "handle", "below", "get", "look", 
"looking", "hat", "day", "and", "sand", "he", "water", "at", "ate", "going"]

string = ""

def substrings(string, array)
    string_array = string.split(" ")
    array_tally = array.tally
    string_tally = string_array.tally
end


substrings("hello there, how are you?", dictionary)