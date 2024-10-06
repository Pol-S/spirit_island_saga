require "oj"
require "pry"
require_relative "action"
require_relative "board"
require_relative "game_state"

class Saga
  attr_accessor :boards

  def initialize(board_name)
    self.boards = Board.fetch(name: board_name)
  end
  
  def card(card_name)
    Card.fetch(name: card_name).to_s
  end

  def spirit(spirit_name)
    Spirit.fetch(name: spirit_name).to_s
  end

  def invader(invader_name)
    Invader.fetch(name: invader_name).to_s
  end

  def land(land_name)
    self.boards.lands[land_name.to_sym]
  end

  def action(card, lands)
    Action.new(card, lands).to_s
  end
end
