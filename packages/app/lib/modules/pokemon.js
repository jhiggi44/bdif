import pokemon from 'pokemontcgsdk';

pokemon.configure({ apiKey: Meteor.settings.pokekey })

export { pokemon as Pokemon };