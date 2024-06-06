import React from 'react'
import { Carousel } from 'react-bootstrap';
import './CarouselSection5.css'
export default function CarouselSection5() {
    return (
        <div className="carousel-container">
            <Carousel id='carouselExampleDark' indicators={false} controls={false}>
                <Carousel.Item>
                    <div className="carousel-item-wrapper item-carousel-section5">
                        <h2 className='title-section5'>What people say <span className='title-span-section5'>about us.</span></h2>
                        <p className='paragraph-section5'>Our Clients send us bunch of smilies with our services and we love them.</p>
                        <div className='container-img-emoticon-section5 d-flex justify-content-center align-items-center'>
                            <img className='img-emoticon-section5' src="src/img/Emoticon1.jpg" alt="Emoticon like" />
                        </div>
                    </div>
                </Carousel.Item>
                <Carousel.Item>
                    <div className="carousel-item-wrapper item-carousel-section5">
                        <h2 className='title-section5'>What they think of <span className='title-span-section5'>our work.</span></h2>
                        <p className='paragraph-section5'>Our clients feel that we have a great ability to understand their problem and address their immediate need.</p>
                        <div className='container-img-emoticon-section5 d-flex justify-content-center align-items-center'>
                            <img className='img-emoticon-section5' src="src/img/Emoticon2.webp" alt="Emoticon like" />
                        </div>
                    </div>
                </Carousel.Item>
                <Carousel.Item>
                    <div className="carousel-item-wrapper item-carousel-section5">
                        <h2 className='title-section5'>What customers think of our <span className='title-span-section5'>management times.</span></h2>
                        <p className='paragraph-section5'>They believe that our skills are so clear that the times indicated for the steps are met to perfection.</p>
                        <div className='container-img-emoticon-section5 d-flex justify-content-center align-items-center'>
                            <img className='img-emoticon-section5' src="src/img/Emoticon3.jpg" alt="Emoticon like" />
                        </div>
                    </div>

                </Carousel.Item>


            </Carousel>
        </div>
    )
}
