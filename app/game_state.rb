require "singleton"
require_relative "board"

class GameState
  include Singleton
  attr_accessor :boards, :lands

  def self.save_boards(boards)
    instance.boards = boards
  end

  def self.save_presence(board, land, spirit)
    target_land = instance.boards.select { |board_names| board_names.has_key?(board) }.first[board].lands[land.to_sym]
    unless target_land.has_key?(:tokens)
      target_land.merge!( { :tokens => [] } )
    end
    target_land[:tokens] << spirit
  end

  def self.delete_presence(lands, spirit)
    instance.boards.lands[lands.to_sym][:tokens].delete[spirit]
  end

  def self.read_presence(lands, spirit)
    raise StandardError.new("Board not initialized property, check if the board has been saved") if instance.boards.nil? || instance.boards.empty?

    case instance.boards.lands[lands.to_sym][:tokens].count(spirit)
    when 0
      #spirit isn't there, don't output any prose
    when 1
      #there is presence there, give a description
    when 2...15
      #there is a sacred site there, give a description
    end
  end

  def self.update_presence(lands, spirit)
    raise StandardError.new("Board not initialized property, check if the board has been saved") if instance.boards.nil? || instance.boards.empty?
    #would this be move?
  end
end