# You write a class called Wrapper, that has a single static function named
# wrap that takes two arguments, a string, and a column number. The function
# returns the string, but with line breaks inserted at just the right places to
# make sure that no line is longer than the column number. You try to break lines
# at word boundaries.

# Like a word processor, break the line by replacing the last space in a line
# with a newline.

class Wordwrap
  def self.wrap(string, length)
    return string if string.length <= length
    return string[0..(length-1)] + '\n' + string[length..-1] if string.length <= 2 * length
    return string[0..(length-1)] + '\n' + string[length..(2 * length - 1)] + '\n' + string[(2 * length)..-1] if string.length <= 3 * length
    
    output = string[0..(1*length-1)]
    for i in 2..4 do 
      output << '\n' + string[(i-1)*length..((i*length)-1)]
      
    end
    
    return output 
  end
end