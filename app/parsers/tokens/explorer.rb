require_relative "../token"

module Parser
  class Explorer < Token
    def to_s
      phrase = []
      #add other amounts and movement types
      case amount
      when "1"
        phrase << "a few explorers"
      when "2"
        phrase << "a cohort of explorers"
      when "3"
        phrase << "an expedition of explorers"
      when "4"
        phrase << "a great many explorers"
      
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