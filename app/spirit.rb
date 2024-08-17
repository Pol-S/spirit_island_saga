class Spirit
  attr_accessor :name

  def initialize(name:)
    self.name = name   
  end

  def to_s
    <<~SPIRIT
    #{name}
    SPIRIT
  end 
end