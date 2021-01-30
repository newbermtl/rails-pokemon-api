class Api::V1::PokemonsController < Api::V1::BaseController
  before_action :choose_pokemon, only: [:show, :update]

  def index
    @pokemons = Pokemon.all
  end

  def show
  end

  def update
    if @pokemon.update(pokemon_params)
      render :show
    else
      render_error
    end
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    head :no_content
  end

  private

  def choose_pokemon
    @pokemon = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(
      :name,
      :type1,
      :type2,
      :total,
      :hp,
      :attack,
      :defense,
      :sp_atk,
      :sp_def,
      :speed,
      :generation,
      :legendary
    )
  end

  def render_error
    render json: { errors: @pokemon.errors.full_messages },
      status: :unprocessable_entity
  end
end
