require 'pry'

class String
  def sentence?
    if self.chars.last == "."
      return true
    end
    return false
  end

  def question?
    if self.chars.last == "?"
      return true
    end
    return false
  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
    return false
  end

  def count_sentences
    # split the string based on given punctuation marks: '.', '!', '?'
    str = self.split(/[.!?]/) # regex
  
    # remove empty sentences
    str = str.reject {|s| s.empty? }

    # return the sentence count
    return str.size
  end
end