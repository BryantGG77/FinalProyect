import React from 'react';
import '../modal/ModalCard.css';

function ModalCard({ isOpen, onClose, paragraph }) {
    if (!isOpen) return null;

    return (
        <>
            <div className='container-modal'>
                <div className='modal-content d-flex justify-content-start align-items-center flex-column'>
                    <div className='container-title-modal d-flex justify-content-center'>
                        <h1 className='color-title-modal'>Trip details</h1>
                    </div>
                    <div className='container-text-modal d-flex justify-content-center'>
                        <p className='color-text-modal'>{paragraph}</p>
                    </div>
                    <div className='container-img d-flex justify-content-center'>
                    </div>
                    <div className='container-button d-flex justify-content-center'>
                        <button className='btn-modal-close' onClick={onClose}>Close</button>
                    </div>
                </div>
            </div>
        </>
    );
}

export default ModalCard;
