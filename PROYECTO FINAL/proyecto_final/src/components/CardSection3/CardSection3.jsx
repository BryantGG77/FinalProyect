import React from 'react';
import './CardSection3.css';
import PrimaryButton from '../PrimaryButton';
import { useState } from 'react';

export default function CardSection3({ img, alt, city, country, price, discountPrice, onBookNow }) {
    return (
        <>
            <div className='card card-section3'>
                <img className='img-card img-card-section3' src={img} alt={alt} />

                <div className='hover-card d-flex'>
                    <PrimaryButton alto={50} ancho={140} label={'Book Now'} onPress={() => onBookNow({ img, alt, city, country, price, discountPrice })} />
                </div>

                <div className='card-body card-body-section3'>
                    <div className='container-card-title-section3'>
                        <h5 className='card-title card-title-section3'>{city}</h5>
                    </div>

                    <div className='d-flex container-info-city-section3'>
                        <div className='d-flex text-info-city-section3 align-items-center'>
                            <i className='bx bx-current-location info-city-img-section3 pe-2'></i>
                            <p className='card-text card-text-section3 m-0'>{country}</p>
                        </div>

                        <p className='m-0 price-line-section3 pe-2'>${price}</p>
                        <p className='m-0 px-1 discount-price-section3 rounded'>${discountPrice}</p>
                    </div>
                </div>
            </div>
        </>
    );
}