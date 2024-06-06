import React from 'react'
import './SocialIconButton.css'
export default function SocialIconButton({ icon }) {
    return (

        <div className='social-icon'>
            <button className='btn-social-icon d-flex justify-content-center align-items-center'>
                {icon}
            </button>
        </div>
    )
}
