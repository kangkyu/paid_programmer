=begin
  
  # write code such that I can say

  m = MetaProgram.new(h)

  where h = {"this" => "that", "that" => "other", "where" => "here"}

  and m.this == "that", m.that == "other", m.where == "here"

=end

class MetaProgram
  def initialize(h)
    @h = h
  end

  def method_missing(method_name)
    @h["#{method_name}"]
  end
end
