class RemoveColumnIdFromPokemons < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokemons, :ID
  end
end
