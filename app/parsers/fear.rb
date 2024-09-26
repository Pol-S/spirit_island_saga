module Parser
  class Fear
    def self.for(effect_string)
      case effect_string.match(/\p{n}(?= Fear)/)[0]
      when nil
        NoFear
      when "1"
        OneFear
      when "2"
        TwoFear
      when "3"
        ThreeFear
      when "4"
        GreatFear
      end.new
    end
  end

  class NoFear < Fear
    def prose = ""
  end
  class OneFear < Fear
    def prose = "invoking anxiety"
  end
  class TwoFear < Fear
    def prose = "invoking fear"
  end
  class ThreeFear < Fear
    def prose = "invoking terror"
  end
  class GreatFear < Fear
    def prose = "spookytown"
  end
end
