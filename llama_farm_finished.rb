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
    max { |llama| llama.age }
  end

  # Should only return the llamers which are spitters (spitter == true)
  def spitters
    select { |llama| llama.spitter }
  end

  # Want an array of the llama names
  def names
    map(&:name)
  end

  # Find a specific llama by its name
  def find_by_name(name)
    find { |llama| llama.name == name }
  end

  # Boolean if there are any llamas under 5 years old
  def under_5?
    any? { |llama| llama.age < 5 }
  end

  # Return number of llamas
  def number_llamas
    count
  end

  # Return the total age of the llamas
  # Hint: the "reduce" method might work.
  def total_age
    reduce(0) { |total, llama|
      total + llama.age
    }
  end

  # Return the llamas sorted by their age
  def sorted_by_age
    sort_by { |llama|
      llama.age
    }
  end

end