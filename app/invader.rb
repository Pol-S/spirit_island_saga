require "oj"
require_relative "fetch"

class Invader
  extend Fetch
  attr_accessor :name

  def initialize(name: )
    self.name = name 
  end

  def to_s
    <<~INVADER
    #{name}
    INVADER
  end
end