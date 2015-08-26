require_relative "llama_farm"

describe LlamaFarm do

  let(:llama_farm) { LlamaFarm.new }

  it "finds total age" do
    expect(llama_farm.total_age).to eq(644)
  end

  it "finds oldest llama" do
    expect(llama_farm.oldest.to_h).to eq({name: "Smiles Richardson", age: 46, food: "Pizza", spitter: true})
  end

  it "finds the spitters" do
    expect(llama_farm.spitters.size).to eq(15)
  end

  it "maps llamas to array of names" do
    expect(llama_farm.names.take(3)).to eq(["Samantha Robertons", "Spitty Richardson", "Samantha Ruth"])
  end

  it "finds a llama based on their name" do
    expect(llama_farm.find_by_name("Spitty Richardson").to_h).to eq({name: "Spitty Richardson", age: 46, food: "Pizza", spitter: true})
  end

  it "finds if any llamas under 5 years old" do
    expect(llama_farm.under_5?).to eq(true)
  end

  it "finds how many llamas there are" do
    expect(llama_farm.number_llamas).to eq(25)
  end

  it "sorts llamas by age" do
    expect(llama_farm.sorted_by_age.first.name).to eq("Scott Richardson")
  end

end