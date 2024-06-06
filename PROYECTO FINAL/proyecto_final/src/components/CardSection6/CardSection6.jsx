import React from 'react'
import './CardSection6.css'

export default function CardSection6({ img, alt, paragraph, date }) {
    return (
        <div className='card card-section6 rounded'>
            <img className='img-card img-card-section6 rounded' src={img} alt={alt} />
            <div className='card-body card-body-section6 p-0'>
                <div className='container-card-title-section6 d-flex justify-content-start alight-items-center'>

                    <div className='container-left-card-title-section6 d-flex align-items-center'>
                        <h5 className='card-title card-title-section6 m-0'>{paragraph}.</h5>
                    </div>
                </div>

                <div className='d-flex container-info-city-section6'>
                    <div className='d-flex text-info-city-section6 align-items-center mt-3'>
                        <p className='card-text card-text-section6 m-0'>{date}</p>
                    </div>
                </div>
            </div>

        </div>
    )
}
