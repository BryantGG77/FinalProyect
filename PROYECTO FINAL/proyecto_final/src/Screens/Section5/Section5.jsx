import React from 'react'
import './Section5.css'
import CarouselSection5 from '../../components/CarouselSection5/CarouselSection5'

export default function Section5() {
    return (
        <div id='about' className='container-section5 d-flex justify-content-start'>
            <div className='container-left-section5'>
                <CarouselSection5 />
            </div>
            <div className='container-right-section5 d-flex justify-content-start ps-5'>
                <div className='container-imgs-right-section5'>
                    <div className='container-img-right-section5 d-flex justify-content-start ps-5'>
                        <img className='img-right-section5-secundary' src="src/img/sect5.png" alt="Image Twitter Post" />
                    </div>
                    <div className='container-img-right-section5'>
                        <img className='img-right-section5' src="src/img/sect5.png" alt="Image Twitter Post" />
                    </div>
                </div>

            </div>

        </div>
    )
}
