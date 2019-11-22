require 'pry'

class String

  def sentence?
    if self.slice!(-1) == "."
      return true
    else
      return false
    end
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]/).reject {|x| x.empty? }.size
  end
end