require "oj"
require "pry"
require_relative "action"

class Saga 
  def card(card_name)
    Card.fetch(name: card_name).to_s
  end

  def spirit(spirit_name)
    Spirit.fetch(name: spirit_name).to_s
  end

  def invader(invader_name)
    Invader.fetch(name: invader_name).to_s
  end

  def action(card)
    Action.new(card).to_s
  end
end
