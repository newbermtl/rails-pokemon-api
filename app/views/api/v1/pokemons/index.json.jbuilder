json.array! @pokemons do |pokemon|
  json.extract! pokemon,
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
end
