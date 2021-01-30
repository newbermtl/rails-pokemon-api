Pokemon API

Initial CSV file changed to JSON

Home page is a list of all pokemons
(PokeExperts will quickly realize images don't all match with the pokemon, PokeAPI doesn't use same ID for all Pokemons)

Initialize:
-After DB is created and Migrations are done,
  run seed to fill DB with all Pokemon in JSON

-For JSON of all Pokemon(and create): http://localhost:3000/api/v1/pokemons/
-For specific Pokemon(show,update,delete): http://localhost:3000/api/v1/pokemons/:id

For Postman (create, update,)
-make sure headers for Content-Type = application/json and pass info in body
