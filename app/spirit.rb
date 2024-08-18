require "oj"
require_relative "fetch"

class Spirit
  extend Fetch
  attr_accessor :name

  def initialize(name:)
    self.name = name   
  end

  def to_s
    <<~SPIRIT
    #{name}
    SPIRIT
  end 
end