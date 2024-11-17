require "oj"
require_relative "fetch"

class Land
  extend Fetch
  attr_accessor :name,
                :terrain, 
                :adjancencies, 
                :coastal, 
                :tokens

  def initialize(name:, terrain:, adjancencies:, coastal:, tokens:)
    self.name
    self.terrain = terrain
    self.adjancencies = adjancencies
    self.coastal = coastal
    self.tokens = tokens
  end

  def to_s
    <<~LAND
      #{name}
      #{terrain}
      #{adjancencies}
      #{coastal}
      #{tokens}
    LAND
  end
end

                