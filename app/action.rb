require_relative "card"
require_relative "spirit"
require_relative "invader"
require_relative "element"
require_relative "range"
require_relative "effect"
require_relative "./parsers/token"
require_relative "./parsers/tokens/presence"

class Action
  attr_accessor :action, :effect, :lands, :spirit_lands

  def initialize(action, lands, spirit_lands)
    self.action = Card.fetch(name: action)
    self.effect = Effect.new(self.action.effect, lands)
    self.lands = lands
    self.spirit_lands = spirit_lands
  end
  
  #these will not stay here
  def interpret_cost
    cost_scale = {
       0 => "effortlessly",
       1 => "smoothly",
       2 => "efficiently",
       3 => "readily",
       4 => "purposefully",
       5 => "vigorously",
       6 => "intensely",
       7 => "doggedly",
       8 => "strenuosly",
       9 => "ardously"
    }
    cost_scale[action.cost]
  end
  
  def interpret_range
    range = "#{Range.to_s(action.range, lands)}"
  end

  def list_elements
    processed_elements = action.elements.map { Element.for(_1).to_s }
    if processed_elements.length >= 2 
      processed_elements[-1] = "and #{processed_elements[-1]}"
    end 
    if processed_elements.length < 3
      processed_elements.join(" ")
    else 
      processed_elements.join(", ")    
    end
  end

  def interpret_effect
    self.effect.to_s
  end

  def spirit_locations
    Parser::Presence.new(0, 1, spirit_lands)
  end

  def to_s
    <<~ACTION
    "With its presence in the #{spirit_locations}, Grinning Trickster Stirs Up Trouble #{interpret_cost} called forth #{action.name} upon the #{interpret_range}, gathering the power #{list_elements} and #{interpret_effect}"
    ACTION
  end
end