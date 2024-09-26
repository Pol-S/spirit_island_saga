require_relative "../token"

module Parser
  class Explorer < Token
    def sentence
      sentence = []
      #I know it's ugly and incomplete, won't stay
      case amount
      when "1"
        sentence << "a few explorers"
      end

      case movement
      when "push"
        sentence.unshift("driving")
        sentence << "out"
      end

      sentence.join(" ")
    end
  end
end