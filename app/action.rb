require_relative "card"
require_relative "spirit"
require_relative "invader"

class Action
  attr_accessor :action

  def initialize(action)
    self.action = Card.fetch(name: action)
  end
  
  def to_s
    <<~ACTION
    "With its presence in the western wetlands, Grinning Trickster Stirs Up Trouble #{action.cost} called forth #{action.name} upon the #{action.range} mountains, gathering the power of the #{action.elements} and #{action.effect}"
    ACTION
  end
end