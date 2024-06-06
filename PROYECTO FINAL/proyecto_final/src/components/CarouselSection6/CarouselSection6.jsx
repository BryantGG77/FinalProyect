import './CarouselSection6.css';
import { Carousel } from 'react-bootstrap';
import CardSection6 from '../../components/CardSection6/CardSection6';
import React from 'react';
import useFetch from '../../useFetch';

export default function CarouselSection6() {
    const { data, loading, error } = useFetch('http://127.0.0.1:8000/cards_blogs/');

    const chunkArray = (array, size) => {
        const chunkedArr = [];
        for (let i = 0; i < array.length; i += size) {
            chunkedArr.push(array.slice(i, i + size));
        }
        return chunkedArr;
    };

    return (
        <>
            {loading ? (
                <div>Cargando...</div>
            ) : error ? (
                <div>Ocurrió un error: {error}</div>
            ) : (
                <div className="carousel-container carousel-section6">
                    <Carousel id='carouselExampleDark' indicators={true} controls={false} interval={null}>
                        {chunkArray(data, 4).map((chunk, index) => (
                            <Carousel.Item key={index} className="carousel-items-section6">
                                <div className="carousel-item-wrapper carousel-item-wrapper-section6">
                                    {chunk.map(card => (
                                        <CardSection6
                                            key={card.id}
                                            img={card.img}
                                            alt={`Image ${card['paragraph']}`}
                                            paragraph={card['paragraph']}
                                            date={card['date']}
                                        />
                                    ))}
                                </div>
                            </Carousel.Item>
                        ))}
                    </Carousel>
                </div>
            )}
        </>
    );
}