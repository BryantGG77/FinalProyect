import React from 'react'
import img2 from '../../img/tourist-with-thumb-up__1_-removebg 1.png';
import './Section1.css';
import PrimaryButton from '../../components/PrimaryButton';

export default function Section1() {
    return (
        <>
            <div className='container-section1 d-flex justify-content-between mt-5'>
                <div className='section1-left'>
                    <h1 className='title-section1-left'>Get started your exciting <span className='title-span-section1'>journey</span> with us.</h1>
                    <p className='paragraph-section1-left'>A team of experienced tourism professionals will provide you with the best advice and tips for your desire place.</p>
                    <button className='btn-discover-now'>Discover Now</button>
                </div>

                <div className='section1-right'>
                    <img src={img2} alt="" />
                </div>
            </div>

            <div className='container-floating-nav d-flex justify-content-center'>

                <div className='nav floating-nav d-flex align-items-center'>

                    <div className='container-left-floating-nav d-flex ps-4'>

                        <div>
                            <a className='item-floating-nav' href="#">Location</a>
                            <p className='parraph-floating-gray m-0'>Where are you going</p>
                        </div>

                        <div>
                            <a className='item-floating-nav' href="#">Date</a>
                            <p className='parraph-floating-gray m-0'>When you will go</p>
                        </div>

                        <div>
                            <a className='item-floating-nav' href="#">Guest</a>
                            <p className='parraph-floating-gray m-0'>Number of guest</p>
                        </div>

                    </div>

                    <div className='container-right-floating-nav d-flex justify-content-center align-items-center'>
                        <PrimaryButton label={'Explore Now'} ancho={161} alto={58} />
                    </div>

                </div>

            </div>

        </>




    )
}
