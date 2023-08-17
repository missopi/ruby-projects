puts 'Enter something to be encrypted.'
string = gets.chomp

def caesar_cipher(string, shift_num = 6)
  asciis = string.chars.map(&:ord) # give letters number value
  asciis.map! do |num|
    if num.between?(65, 90) # uppercase letters
      num = ((num - 65 + shift_num) % 26) + 65
    elsif num.between?(97, 122) # lowercase letters
      num = ((num - 97 + shift_num) % 26) + 97
    elsif num.between?(48, 57) # numbers
      num = ((num - 48 + shift_num) % 26) + 48
    end
    num.chr # turn numbers back to letters
  end
  asciis.join
end

caesar_cipher(string)
