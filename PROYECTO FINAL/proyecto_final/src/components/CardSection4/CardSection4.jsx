import React from 'react'
import './CardSection4.css'
export default function CardSection4({ img, alt, cityCountry, price, daysTrip }) {
    return (

        <div className='card card-section4'>
            <img className='img-card img-card-section4' src={img} alt={alt} />
            <div className='card-body card-body-section4'>
                <div className='container-card-title-section4 d-flex justify-content-center alight-items-center ms-2'>
                    <div className='container-left-card-title-section4 d-flex align-items-center'>
                        <h5 className='card-title card-title-section4 m-0'>{cityCountry}</h5>
                    </div>
                    <div className='container-right-card-price-section4 d-flex align-items-center'>
                        <p className='text-price-section4 m-0'>${price}k</p>
                    </div>
                </div>

                <div className='d-flex container-info-city-section4'>
                    <div className='d-flex text-info-city-section4 align-items-center ps-2 mt-3'>
                        <i className='bx bxs-navigation info-city-img-section4 pe-2'></i>
                        <p className='card-text card-text-section4 m-0 ps-2'>{daysTrip}</p>
                    </div>
                </div>
            </div>
        </div>
    )
}
