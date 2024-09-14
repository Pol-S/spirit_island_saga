class Range

  def self.to_s(range)
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
  end
end