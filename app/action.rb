require_relative "card"
require_relative "spirit"
require_relative "invader"
require_relative "element"

class Action
  attr_accessor :action

  def initialize(action)
    self.action = Card.fetch(name: action)
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
    range_scale = {
       "0" => "immediate",
       "1" => "neighboring",
       "2" => "further off",
       "3" => "distant"
    }
    range_scale[action.range]
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

  def to_s
    <<~ACTION
    "With its presence in the western wetlands, Grinning Trickster Stirs Up Trouble #{interpret_cost} called forth #{action.name} upon the #{interpret_range} mountains, gathering the power #{list_elements} and #{action.effect}"
    ACTION
  end
end