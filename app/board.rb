require "oj"
require_relative "fetch"

class Board
  extend Fetch
  attr_accessor :name, 
                :lands

  def initialize(name:, lands:)
    self.name = name
    self.lands = lands
  end

  def to_s
    <<~BOARD
      #{name}
      #{lands}
    BOARD
  end
end