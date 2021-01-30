require 'json'

Pokemon.delete_all
puts "Clearing Pokemon database"

filepath = 'pokemon_list.json'

serialized_pokemons = File.read(filepath)

pokemon_list = JSON.parse(serialized_pokemons)

puts "Catching all the Pokemons"

pokemon_list.each { |pokemon|
  puts "Catching #{pokemon["Name"]}..."
  Pokemon.create(
    ID: pokemon["#"],
    name: pokemon["Name"],
    type1: pokemon["Type 1"],
    type2: pokemon["Type 2"],
    total: pokemon["Total"],
    hp: pokemon["HP"],
    attack: pokemon["Attack"],
    defense: pokemon["Defense"],
    sp_atk: pokemon["Sp. Atk"] ,
    sp_def: pokemon["Sp. Def"],
    speed: pokemon["Speed"],
    generation: pokemon["Generation"],
    legendary: pokemon["Legendary"])
}


puts "Done, you have caught all #{Pokemon.last.ID} Pokemons"
