import pokemon from 'pokemontcgsdk'

pokemon.configure({apiKey: Meteor.settings.pokemontcg.api_key})

Meteor.methods({
  findPokemonById(id) {
    return pokemon.card.find(id).then(card => card.name)
  },
});