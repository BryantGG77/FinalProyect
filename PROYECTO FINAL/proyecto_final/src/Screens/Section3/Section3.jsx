import React from 'react'
import './Section3.css'
import CarouselSection3 from '../../components/CarouselSection3/CarouselSection3'

export default function Section3() {
    return (
        <div id='destination' className='container-section3'>
            <div className='upper-container-section3 d-flex justify-content-center text-center align-items-center'>

                <div className='container-text-upper-section3'>
                    <h2 className='title-section3'>Exclusive <span className='title-span-section3'>deals & discounts</span></h2>
                    <div className='paragraph-container-section3 d-flex justify-content-center align-items-center'>
                        <p className='paragraph-section3'>Discover our fantastic early booking discounts & start planning your journey.</p>
                    </div>

                </div>

            </div>
            <CarouselSection3 />
        </div>
    )
}

