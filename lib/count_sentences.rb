require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?') ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentences = self.split(/[?!.]/).delete_if { |sentence| sentence == "" }
    sentences.count
  end
end