require_relative "card"
require_relative "spirit"
require_relative "invader"

class Action
  attr_accessor :action

  def initialize(action)
    self.action = Card.fetch(name: action)
  end
  
  #this does not belong here
  def interpret_cost()
    cost_scale = Hash[
       0: "effortlessly",
       1: "smoothly",
       2: "efficiently",
       3: "readily",
       4: "purposefully",
       5: "vigorously",
       6: "intensely",
       7: "doggedly",
       8: "strenuosly",
       9: "ardously"
    ]
  end

  def to_s
    <<~ACTION
    "With its presence in the western wetlands, Grinning Trickster Stirs Up Trouble #{action.cost} called forth #{action.name} upon the #{action.range} mountains, gathering the power of the #{action.elements} and #{action.effect}"
    ACTION
  end
end