import React, { useEffect, useState } from 'react';
import Modal from 'react-modal';
import SearchModal from './SearchModal';

const SearchModalTrigger = () => {
  const [modalIsOpen, setIsOpen] = useState(false);

  function openModal() {
    setIsOpen(true);
  }

  function afterOpenModal() { }

  function closeModal() {
    setIsOpen(false);
  }

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

export default SearchModalTrigger;