class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @pokemons = Pokemon.all
  end
end
