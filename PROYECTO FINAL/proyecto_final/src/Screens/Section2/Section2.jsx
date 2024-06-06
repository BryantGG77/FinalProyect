import React from 'react'
import './Section2.css'
import CardSection2 from '../../components/CardSection2/CardSection2'
import img from '../../img/Group (2).png'
import img2 from '../../img/Group (1).png'
import img3 from '../../img/Group.png'

export default function Section2() {
    return (

        <div className='container-section2'>

            <div className='upper-container-section2 d-flex justify-content-center text-center'>

                <div className='container-text-upper'>
                    <h2 className='title-section2'>Things you need <span className='title-span-section2'>to do</span></h2>
                    <p className='paragraph-section2 pt-3'>We ensure that you`ll embark on a perfectly planned, safe vacation at a price you can afford.</p>
                </div>

            </div>

            <div className='lower-container-section2 d-flex justify-content-between'>
                <CardSection2 img={img} title={'Sign Up'} text={'Completes all the work associated with planning and processing'} />
                <CardSection2 img={img3} title={'Worth of Money'} text={'After successful access then book from exclusive deals & pricing'} />
                <CardSection2 img={img2} title={'Exciting Travel'} text={'Start and explore a wide range of exciting travel experience.'} />
            </div>


        </div>

    )
}
