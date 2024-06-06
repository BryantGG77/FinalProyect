import './CarouselSection3.css';
import { Carousel } from 'react-bootstrap';
import CardSection3 from '../../components/CardSection3/CardSection3';
import React, { useState } from 'react';
import useFetch from '../../useFetch';
import ModalCard from '../../modal/ModalCard';

export default function CarouselSection3() {
    const { data, loading, error } = useFetch('http://127.0.0.1:8000/cards_discounts/');
    const [isModalOpen, setIsModalOpen] = useState(false);
    const [modalParagraph, setModalParagraph] = useState('');

    const chunkArray = (array, size) => {
        const chunkedArr = [];
        for (let i = 0; i < array.length; i += size) {
            chunkedArr.push(array.slice(i, i + size));
        }
        return chunkedArr;
    };

    const handleOpenModal = (paragraph) => {
        setModalParagraph(paragraph);
        setIsModalOpen(true);
    };

    const handleCloseModal = () => {
        setIsModalOpen(false);
        setModalParagraph('');
    };

    return (
        <>
            {loading ? (
                <div>Cargando...</div>
            ) : error ? (
                <div>Ocurrió un error: {error}</div>
            ) : (
                <>
                    <div className="carousel-container">
                        <Carousel id='carouselExampleDark' indicators={false} interval={null}>
                            {chunkArray(data, 4).map((chunk, index) => (
                                <Carousel.Item key={index}>
                                    <div className="carousel-item-wrapper">
                                        {chunk.map(card => (
                                            <CardSection3
                                                key={card.id}
                                                img={card.img}
                                                alt={`Image ${card.city}`}
                                                city={card.city}
                                                country={card.country}
                                                price={card.price.toString()}
                                                discountPrice={card.discountPrice.toString()}
                                                onBookNow={() => handleOpenModal(card.paragraph)}
                                            />
                                        ))}
                                    </div>
                                </Carousel.Item>
                            ))}
                        </Carousel>
                    </div>
                    <ModalCard isOpen={isModalOpen} onClose={handleCloseModal} paragraph={modalParagraph} />
                </>
            )}
        </>
    );
}
