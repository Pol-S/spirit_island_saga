require "oj"
require "pry"
require_relative "card"

class Prose
  def retrieve(card_name)
    cards = File.read("./cards.json")    
    card_hash = Oj.load(cards, {symbol_keys: true})
    card = Card.new(**card_hash)
    card.to_s
  end
end
