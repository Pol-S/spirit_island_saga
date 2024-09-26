module Parser
  class Token
    attr_accessor :movement, :amount

    MOVEMENT_KEYWORDS = %w[ 
      gather
      push
    ]

    def self.for(effect_string)
      data = effect_string.scan(self.data_pattern)
      data.map do |piece|
        Parser.const_get(piece[2]).new(
          piece[0],
          piece[1]
        )
      end     
    end

    def self.data_pattern
      /(?<movement>#{MOVEMENT_KEYWORDS.join("|")}) (?<amount>\d*) (?<type>\w*)/
    end

    def initialize(movement, amount)
      self.movement = movement
      self.amount = amount
    end

    #goal:     [
    #   "the beasts roamed in", 
    #   "driving a few explorers out back to the nearby wetlands",
    # ]

    def self.prose(token_arr)
      
    end
  end
end