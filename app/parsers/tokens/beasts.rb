require_relative "../token"

module Parser
  class Beasts < Token
    def sentence
      sentence = []
      #I know it's ugly and incomplete, won't stay
      case amount
      when "1"
        sentence << "the beasts"
      end

      case movement
      when "gather"
        sentence << "roamed in"
      end

      sentence.join(" ")
    end
  end
end