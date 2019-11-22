require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    str = self.split(/[.?!]/) #split utilizing regex affecting all punctuation to end sentences
    str = str.reject {|s| s.empty? } #gets rid of empty arrays caused by double punctuation
    return str.length
  end
end