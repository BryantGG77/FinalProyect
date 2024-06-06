import React from 'react'
import './Section4.css'
import CarouselSection4 from '../../components/CarouselSection4/CarouselSection4'


export default function Section4() {
    return (
        <div id='tour' className='container-section4'>
            <div className='upper-container-section4 d-flex justify-content-center text-center align-items-center'>

                <div className='container-text-upper-section4'>
                    <h2 className='title-section4 m-0'>Best <span className='title-span-section4'>vacation plan</span></h2>
                    <div className='paragraph-container-section4 d-flex justify-content-center align-items-center'>
                        <p className='paragraph-section4 m-0'>Plan your perfect vacation with our travel agency. Choose among hundreds of all-inclusive offers!</p>
                    </div>

                </div>

            </div>

            <CarouselSection4 />

        </div>
    )
}
