puts "Enter something to be encrypted."
string = gets.chomp

def caesar_cipher(string, shift_num = 6)
    asciis = string.chars.map { |char| char.ord} # give letters number value
    shift_move = asciis.map {|num| num + shift_num} 
    shift_again = shift_move.map do |num|
        if num.between?(65, 95) # uppercase letters
          if num > 90
            num - 26
          else 
            num
          end
        elsif num.between?(97, 127) # lowercase letters
          if num > 122
            num - 26
          else
            num
          end
        elsif num == 38 # keeps spaces the same
            num - 6
          end
        end
    end
    shifted = shift_move.map {|num| num.chr}.join # turn numbers back to letters
    puts shifted
end

caesar_cipher(string)

