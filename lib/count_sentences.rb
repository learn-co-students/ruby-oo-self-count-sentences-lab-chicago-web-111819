require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    self.split(/[.?!]+/).count
    # regex explanation:
    # defined between / /
    # [ ] means 'range of characters to match'
    # + means one or more
  end
end