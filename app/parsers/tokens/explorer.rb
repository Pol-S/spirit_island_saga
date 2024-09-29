require_relative "../token"

module Parser
  class Explorer < Token
    def prose
      phrase = []
      #add other amounts and movement types
      case amount
      when "1"
        phrase << "a few explorers"
      end

      case movement
      when "push"
        phrase.unshift("driving")
        phrase << "out back to the nearby wetlands"
      end

      phrase.join(" ")
    end
  end
end