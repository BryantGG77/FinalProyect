import React from 'react'
import './CardSection2.css'
export default function CardSection2({ img, title, text }) {
    return (
        <div className='card card-section2'>
            <img className='img-card img-card-section2' src={img} alt="" />
            <div className='card-body card-body-section2'>
                <h5 className='card-title card-title-section2'>{title}</h5>
                <p className='card-text card-text-section2'>{text}</p>

            </div>

        </div>
    )
}
