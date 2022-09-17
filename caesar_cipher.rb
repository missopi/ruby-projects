puts "Enter something to be encrypted."
string = gets.chomp

def caesar_cipher(string, shift_num = 6)
    asciis = string.chars.map { |char| char.ord} # give letters number value
    shift_move = asciis.map {|num| num + shift_num} 
    shifted = shift_move.map {|num| num.chr}.join # turn numbers back to letters
    puts shifted
end

caesar_cipher(string)

