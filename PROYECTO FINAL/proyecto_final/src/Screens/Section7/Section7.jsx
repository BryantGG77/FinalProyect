import React from 'react'
import './Section7.css'
export default function Section7() {
    return (
        <div className='container-section7 d-flex justify-content-center align-items-center'>

            <div className='floating-nav-section7 d-flex flex-column justify-content-center align-items-center'>
                <div className='container-text-section7 d-flex justify-content-center'>
                    <h2 className='text-section7 text-center'>Subscribe and get exclusive deals & offer</h2>
                </div>
                <div className='container-input-section7 d-flex justify-content-center align-items-center'>
                    <div className='input-container-section7'>
                        <input className='input-section7' type="email" placeholder='✉ Enter your mail' />
                    </div>
                    <div className='button-container-section7'>
                        <button className='btn-section7'>Subscribe</button>
                    </div>
                </div>
            </div>

        </div>
    )
}
