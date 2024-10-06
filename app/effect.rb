require_relative "./parsers/fear"
require_relative "./parsers/token"
require_relative "./parsers/tokens/beasts"
require_relative "./parsers/tokens/explorer"

class Effect
  attr_accessor :effect_string, :fear, :tokens, :lands

  def initialize(effect_string, lands)
    self.effect_string = effect_string
    self.fear = Parser::Fear.for(self.effect_string)
    self.tokens = Parser::Token.for(self.effect_string, lands)  
    self.lands = lands  
  end

      #goal: "invoking anxiety within the explorers there. From the neighboring jungle, the beasts roamed in, driving a few explorers out back to the nearby wetlands."
  
  def to_s
    "#{fear.prose} within the explorers there. From the #{tokens[0].prose}, #{tokens[1].prose}"
  end
end