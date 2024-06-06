import React from 'react'
import './Section6.css'
import CarouselSection6 from '../../components/CarouselSection6/CarouselSection6'
export default function Section6() {
    return (
        <div id='blog' className='container-section6'>

            <div className='upper-container-section6 d-flex justify-content-center text-center align-items-center'>
                <div className='container-text-upper-section6 d-flex justify-content-center align-items-center'>
                    <h2 className='title-section6'>Get update with <span className='title-span-section6'>latest blog</span></h2>

                </div>
            </div>

            <div className='lower-container-section6 d-flex justify-content-between align-items-center'>

                <CarouselSection6 />
            </div>


        </div>
    )
}
