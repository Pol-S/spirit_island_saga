require "oj"
require "pry"
require_relative "action"
require_relative "board"
require_relative "game_state"

class Saga
  attr_accessor :boards

  #this initialize will need to grow and capture all the starting token locations. Presence is special because that is player choice
  def initialize(board_names)
    self.boards = []
    board_names.split(" ").each do |board_name|
      self.boards << {board_name => Board.fetch(name: board_name)}    
    end
    GameState.save_boards(self.boards)
  end

  def save_presence(board, land, spirit)
    GameState.save_presence(board, land, spirit)
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

  def action(card, lands, spirit_lands)
    Action.new(card, lands, spirit_lands).to_s
  end
end
