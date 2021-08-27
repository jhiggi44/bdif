import React, { useEffect, useState } from 'react';
import { Pokemon } from '../modules/pokemon';
import SearchModal from './SearchModal';

import Modal from 'react-modal';

const SearchButton = () => {
  return(
    <button>Search</button>
  );
}


const Home = () => {
  const [pokemon, setPokemon] = useState("pikachu");
  const [modalIsOpen, setIsOpen] = useState(false);

  function openModal() {
    setIsOpen(true);
  }

  function afterOpenModal() {
    // references are now sync'd and can be accessed.
    subtitle.style.color = '#f00';
  }

  function closeModal() {
    setIsOpen(false);
  }

  useEffect(() => {
    Pokemon.card.find('base1-4')
    .then(card => {
        setPokemon(card.name);
    });
  }, []);
  
  return(
    <div>
      <button onClick={openModal}>Open Modal</button>
      <Modal
        isOpen={modalIsOpen}
        onAfterOpen={afterOpenModal}
        onRequestClose={closeModal}
        contentLabel="Example Modal"
      >
        <SearchModal />
      </Modal>
    </div>
  );
}

export default Home;