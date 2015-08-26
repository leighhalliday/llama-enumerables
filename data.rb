require 'json'

class Data

  def self.fetch
    json = <<JSONDATA
    [
      {
        "name":"Samantha Robertons",
        "age":35,
        "food":"Pizza",
        "spitter":true
      },
      {"name":"Spitty Richardson","age":46,"food":"Pizza","spitter":true},
      {"name":"Samantha Ruth","age":5,"food":"Pasta","spitter":true},
      {"name":"Slump Richardson","age":35,"food":"Pasta","spitter":true},
      {"name":"Spitty Ruth","age":21,"food":"Pasta","spitter":false},
      {"name":"Smiles Ruth","age":39,"food":"Pizza","spitter":false},
      {"name":"Spitty Rawling","age":32,"food":"Pizza","spitter":false},
      {"name":"Samantha Ruth","age":36,"food":"Peaches","spitter":true},
      {"name":"Samantha Rawling","age":14,"food":"Peaches","spitter":true},
      {"name":"Smiles Rawling","age":24,"food":"Pasta","spitter":true},
      {"name":"Slump Richardson","age":49,"food":"Pizza","spitter":true},
      {"name":"Samantha Ruth","age":21,"food":"Peaches","spitter":true},
      {"name":"Samantha Robertons","age":16,"food":"Peaches","spitter":false},
      {"name":"Smiles Rawling","age":22,"food":"Pizza","spitter":true},
      {"name":"Smiles Ruth","age":15,"food":"Pizza","spitter":true},
      {"name":"Scott Richardson","age":41,"food":"Peaches","spitter":true},
      {"name":"Slump Robertons","age":7,"food":"Pasta","spitter":false},
      {"name":"Spitty Robertons","age":12,"food":"Pasta","spitter":true},
      {"name":"Smiles Richardson","age":15,"food":"Peaches","spitter":true},
      {"name":"Samantha Rawling","age":23,"food":"Pizza","spitter":false},
      {"name":"Spitty Ruth","age":19,"food":"Pasta","spitter":false},
      {"name":"Spitty Rawling","age":41,"food":"Pizza","spitter":false},
      {"name":"Scott Richardson","age":4,"food":"Pizza","spitter":false},
      {"name":"Slump Ruth","age":26,"food":"Pasta","spitter":false},
      {"name":"Smiles Richardson","age":46,"food":"Pizza","spitter":true}
    ]
JSONDATA
    JSON.parse(json)
  end

  def self.generate
    llamas = []
    25.times do |num|
      llamas << {
        name: ["Spitty", "Slump", "Smiles", "Scott", "Samantha"].sample + " " + ["Robertons", "Rawling", "Ruth", "Richardson"].sample,
        age: (1..50).to_a.sample,
        food: ["Pizza", "Pasta", "Peaches"].sample,
        spitter: [true, false].sample
      }
    end
    puts llamas.to_json
  end

end