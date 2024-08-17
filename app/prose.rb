require "oj"
require "pry"
require_relative "card"
require_relative "spirit"

class Prose
  def retrieve(card_name)
    cards = File.read("./cards.json")    
    card_hash = Oj.load(cards, {symbol_keys: true})
    card = Card.new(**card_hash)
    card.to_s
  end

  def spirit(spirit_name)
    spirits = File.read("./spirits.json")    
    spirit_hash = Oj.load(spirits, {symbol_keys: true})
    spirit = Spirit.new(**spirit_hash)
    spirit.to_s
  end
end
