require "oj"
require_relative "fetch"

class Card
  extend Fetch
  attr_accessor :name, 
                :speed, 
                :range, 
                :target, 
                :cost, 
                :elements, 
                :effect, 
                :type

  def initialize(name:, speed:, range:, target:, cost:, elements:, effect:, type:)
    self.name = name
    self.speed = speed
    self.range = range
    self.target = target
    self.cost = cost
    self.elements = elements
    self.effect = effect
    self.type = type    
  end

  def to_s
    <<~CARD
      #{name}
      #{speed}
      #{range}
      #{target}
      #{cost}
      #{elements}
      #{effect}
      #{type}
    CARD
  end 
end