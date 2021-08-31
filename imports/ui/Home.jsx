import React, { useEffect, useState } from 'react';
import { Pokemon } from '../modules/pokemon';
import SearchModalTrigger from './SearchModalTrigger';

const SearchButton = () => {
  return(
    <button>Search</button>
  );
}


const Home = () => {
  const [pokemon, setPokemon] = useState("pikachu");

  useEffect(() => {
    Pokemon.card.find('base1-4')
    .then(card => {
        setPokemon(card.name);
    });
  }, []);
  
  return(
    <div>
      <SearchModalTrigger />
      <div>Other Content</div>
    </div>
  );
}

export default Home;