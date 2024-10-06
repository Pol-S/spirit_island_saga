module Parser
  class Token
    attr_accessor :movement, :amount, :lands

    MOVEMENT_KEYWORDS = %w[ 
      gather
      push
    ]

    def self.for(effect_string, lands)
      data = effect_string.scan(self.data_pattern)
      data.map do |piece|
        Parser.const_get(piece[2]).new(
          piece[0],
          piece[1],
          lands
        )
      end
    end

    def self.data_pattern
      /(?<movement>#{MOVEMENT_KEYWORDS.join("|")}) (?<amount>\d*) (?<type>\w*)/
    end

    def initialize(movement, amount, lands)
      self.movement = movement
      self.amount = amount
      self.lands = lands
    end
  end
end