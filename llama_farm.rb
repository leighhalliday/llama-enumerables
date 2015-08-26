require_relative "data"
require_relative "llama"

class LlamaFarm

  attr_accessor :data

  include Enumerable

  def initialize
    @data = Data.fetch.map { |llama_hash| Llama.new(llama_hash) }
  end

  def each
    data.each { |llama| yield llama }
  end

  # Should return the oldest Llama based on age
  def oldest
  end

  # Should only return the llamers which are spitters (spitter == true)
  def spitters
  end

  # Want an array of the llama names
  def names
  end

  # Find a specific llama by its name
  def find_by_name(name)
  end

  # Boolean if there are any llamas under 5 years old
  def under_5?
  end

  # Return number of llamas
  def number_llamas
  end

  # Return the total age of the llamas
  # Hint: the "reduce" method might work.
  def total_age
  end

  # Return the llamas sorted by their age
  def sorted_by_age
  end

end