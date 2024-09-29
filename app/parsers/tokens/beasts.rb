require_relative "../token"

module Parser
  class Beasts < Token
    def prose
      phrase = []
      #add other amounts and movement types
      case amount
      when "1"
        phrase << "the beasts"
      end

      case movement
      when "gather"
        phrase.unshift("neighboring jungle,")
        phrase << "roamed in"
      end

      phrase.join(" ")
    end
  end
end