def average(num1, num2)
  (num1 + num2) / 2.0
end  

def average_array(arr)
  arr.sum / (arr.length * 1.0)
end  

def repeat(str, num)
  output = ""
  num.times {output += str}
  output
end  

def yell(str)
  str.upcase + "!"
end

def alternating_case(sent)
 parts = sent.split
 new_sent = []
  parts.each_with_index do |part, i|
    if i.even?
      new_sent << part.upcase
    else
      new_sent << part.downcase  
    end 
  end 
  new_sent.join(" ")
end  