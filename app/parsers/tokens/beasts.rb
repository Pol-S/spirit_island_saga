require_relative "../token"

module Parser
  class Beasts < Token
    def to_s
      phrase = []
      #add other amounts and movement types
      case amount
      when "1"
        phrase << "the beasts"
      when "2"
        phrase << "the small gang of beasts"
      when "3"
        phrase << "the wild horde of beasts"
      when "4"
        phrase << "the teaming masses of beasts"
      end

      case movement
      when "gather"
        phrase.unshift("neighboring #{lands.last[:terrain]},")
        phrase << "roamed in"
      end

      phrase.join(" ")
    end
  end
end