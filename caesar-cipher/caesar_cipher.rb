puts "Enter something to be encrypted."
string = gets.chomp

def caesar_cipher(string, shift_num = 6)
    asciis = string.chars.map { |char| char.ord} # give letters number value
    shift_move = asciis.map {|num| num + shift_num} 
    shift_again = shift_move.map do |num|
        if num.between?(71, 96) # uppercase letters
          if num > 90
            num - 26
          else 
            num
          end
        elsif num.between?(103, 128) # lowercase letters
          if num > 122
            num - 26
          else
            num
          end
        elsif num.between?(38, 70) # keeps spaces and punctuation the same
            if num == 38 || (num > 38 && num < 54) || (num > 62 && num < 71)
              num - 6
            elsif num > 53 && num < 63
              num + 6
            end
        end
    end
    shifted = shift_move.map {|num| num.chr}.join # turn numbers back to letters
    shifted
end

caesar_cipher(string)

