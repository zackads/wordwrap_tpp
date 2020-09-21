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
    return string.sub(' ', '\n') if string.include? ' '

      
    new_string = string[length..-1]
    string[0..(length - 1)] + '\n' + wrap(new_string, length)
  end
end
