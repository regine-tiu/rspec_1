def hipsterfy(word)
  vowels = "aeiou"
  i = word.length - 1
    while i >= 0
     if vowels.include?(word[i])
      return word[0...i] + word[i+1..-1]
      end 
    i -= 1   
    end 
  word   
end  

def vowel_counts(str)
  count = Hash.new(0)
  vowels = "aeiou"
  str.each_char do |char|
   if vowels.include?(char.downcase) 
    count[char.downcase] += 1
   end
  end 
  count
end  

def caesar_cipher(str, n)
  alphabet = ("a".."z").to_a
  output = ""

  str.each_char do |char|
    if alphabet.include?(char)
      old_i = alphabet.index(char)
      new_i = (old_i + n) % 26
      output += alphabet[new_i]
    else
      output += char
    end    
  end  
  output
end  