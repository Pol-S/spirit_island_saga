module Parser
  class Token
    attr_accessor :movement, :amount, :source_land, :destination_land

    MOVEMENT_KEYWORDS = %w[ 
      gather
      push
    ]

    def self.for(effect_string, source_land, destination_land)
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

    def initialize(movement, amount, source_land, destination_land)
      self.movement = movement
      self.amount = amount
      self.source_land = source_land
      self.destination_land = destination_land
    end
  end
end