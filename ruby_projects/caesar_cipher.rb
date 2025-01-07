def encoding(character, shift)
  if character.ord.between?(65, 90) # A-Z
    x = (character.ord + shift)
    if x > 90
      x = x - 26
    end
    return x.chr
  elsif character.ord.between?(97, 122) # a-z
    x = (character.ord + shift)
    if x > 122
      x = x - 26
    end
    return x.chr
  else
    return character
  end
end

def caesar_cipher(string, shift) 
  string_array = string.split('') # split the string into an array of characters
  string_array.map! {|char| encoding(char, shift)} # encode each character
  p string_array.reduce {|string, char| string + char} # join the array into a string
end

caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"
