import './CarouselSection4.css';
import { Carousel } from 'react-bootstrap';
import CardSection4 from '../../components/CardSection4/CardSection4';
import React from 'react';
import useFetch from '../../useFetch';

export default function CarouselSection3() {
    const { data, loading, error } = useFetch('http://127.0.0.1:8000/cards_vacation_plans/');

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
                <div className="carousel-container">
                    <Carousel id='carouselExampleDark' indicators={false} interval={null}>
                        {chunkArray(data, 3).map((chunk, index) => (
                            <Carousel.Item key={index}>
                                <div className="carousel-item-wrapper">
                                    {chunk.map(card => (
                                        <CardSection4
                                            key={card.id}
                                            img={card.img}
                                            alt={`Image ${card['cityCountry']}`}
                                            cityCountry={card['cityCountry']}
                                            price={card.price.toString()}
                                            daysTrip={card['daysTrip']}
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