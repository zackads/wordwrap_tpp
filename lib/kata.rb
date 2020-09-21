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

    break_point = if string.include?(' ') && string.index(' ') <= length
                    string.index(' ') + 1
                  else
                    length
                  end

    new_string = string[break_point..-1]
    string[0..break_point - 1].strip + '\n' + wrap(new_string, length)
  end
end
