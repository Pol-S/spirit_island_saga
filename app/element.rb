class Element
 
  def self.for(element)
    case element
    when "sun"
      Sun
    when "moon"
      Moon
    when "fire"
      Fire
    when "air"
      Air
    when "water"
      Water
    when "earth"
      Earth
    when "plants"
      Plants
    when "animals"
      Animals
    end.new
  end

  def to_s
    "of #{with_article}"
  end
end

class Sun < Element
  def element = "sun"
  def with_article = "the sun"
end

class Moon < Element
  def element = "moon"
  def with_article = "the moon"
end

class Fire < Element
  def element = "fire"
  def with_article = "fire"
end

class Air < Element
  def element = "air"
  def with_article = "air"
end

class Water < Element
  def element = "water"
  def with_article = "water"
end

class Earth < Element
  def element = "earth"
  def with_article = "earth"
end

class Plants < Element
  def element = "plants"
  def with_article = "plants"
end

class Animals < Element
  def element = "animals"
  def with_article = "animals"
end