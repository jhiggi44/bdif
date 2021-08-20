import React, { useEffect, useState } from 'react';
import { Pokemon } from '../modules/pokemon';

const Home = () => {
  [pokemon, setPokemon] = useState("pikachu");

  useEffect(() => {
    Pokemon.card.find('base1-4')
    .then(card => {
        setPokemon(card.name);
    });
  }, []);
  
  return(
    <div>
      { pokemon }
    </div>
  );
}

export default Home;