require 'pry'

class String
  

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    charray = []
    charray = self.split
    count = 0
    charray.each { |x| 
      if x.sentence? || x.question? || x.exclamation?
        count += 1
      end
      }
    count
  end
end