class AddIdtoPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column(:pokemons, :ID, :integer)
  end
end
