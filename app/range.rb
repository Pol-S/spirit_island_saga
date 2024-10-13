require_relative "./parsers/token"

class Range
  attr_accessor :tokens, :lands

  def self.to_s(range, lands)
    phrase = []
    phrase.push(
      case range
      when "0"
        "immediate"
      when "1"
        "neighboring"
      when "2"
        "further off"
      when "3"
        "distant"   
      end
    )
    
    phrase.push(
      lands.first[:terrain]
    )

    phrase.join(" ")
  end
end