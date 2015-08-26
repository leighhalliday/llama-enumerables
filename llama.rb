class Llama

  ATTRIBUTES = [:name, :age, :food, :spitter]

  attr_accessor *ATTRIBUTES

  def initialize(attributes = {})
    attributes.each do |key, value|
      send("#{key}=", value)
    end
  end

  def <=>(other)
    self.name <=> other.name
  end

  def to_h
    ATTRIBUTES.each_with_object({}) do |attr, hsh|
      hsh[attr] = send(attr)
    end
  end

end