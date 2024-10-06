require "oj"
require_relative "fetch"

class Land
  extend Fetch
  attr_accessor :terrain, 
                :adjancencies, 
                :coastal, 
                :tokens

  def initialize(terrain:, adjancencies:, coastal:, tokens:)
    self.terrain = terrain
    self.adjancencies = adjancencies
    self.coastal = coastal
    self.tokens = tokens
  end

  def to_s
    <<~LAND
      #{terrain}
      #{adjancencies}
      #{coastal}
      #{tokens}
    LAND
  end
end

                