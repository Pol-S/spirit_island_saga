class Effect
  def initialize
  end

  def fear(fear_amount)
    case fear
    when "1 Fear"
      "anxiety"
    end
  end

      #goal: "invoking anxiety within the explorers there. From the neighboring jungle, the beasts roamed in, driving a few explorers out back to the nearby wetlands."
  
  def self.to_s(effect)
    fear = "invoking anxiety"
    token_movement = [ "the beasts roamed in", "driving a few explorers out back to the nearby wetlands"]
    "#{fear}. From the neighboring jungle, #{token_movement[0]}, #{token_movement[1]}"
  end
end