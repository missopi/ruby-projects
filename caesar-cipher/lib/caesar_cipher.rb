puts 'Enter something to be encrypted.'
string = gets.chomp

def caesar_cipher(string, shift_num = 6)
  asciis = string.chars.map(&:ord) # give letters number value
  shift_move = asciis.map { |num| num + shift_num }
  shift_move.map do |num|
    if num.between?(71, 96) # uppercase letters
      num - 26 if num > 90
    elsif num.between?(103, 128) # lowercase letters
      num - 26 if num > 122
    elsif num.between?(38, 70) # keeps spaces and punctuation the same
      num - 6 if num == 38 || (num > 38 && num < 54) || (num > 62 && num < 71)
      num + 6 if num > 53 && num < 63
    end
  end
  shift_move.map(&:chr).join # turn numbers back to letters
end

caesar_cipher(string)
