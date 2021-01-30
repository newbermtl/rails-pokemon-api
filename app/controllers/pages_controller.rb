class PagesController < ApplicationController
  def home
    pokemons = Pokemon.all
    @pokemons_clean = pokemons.reject { |pokemon| pokemon.name.include? "Mega" }
  end
end
