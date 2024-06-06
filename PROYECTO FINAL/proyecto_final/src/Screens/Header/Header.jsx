import React from 'react'
import './Header.css'

import img1 from '../../img/Logo.png'
import WhiteButton from '../../components/WhiteButton'
import PrimaryButton from '../../components/PrimaryButton'



export default function Header() {
    return (
        <div id='home' className='container-header'>
            <header className='header d-flex justify-content-between align-items-center'>
                <div className='container-img-logo'>
                    <img src={img1} alt="Logo Trabook" />
                </div>

                <div className='nav d-flex justify-content-center'>
                    <ul className='elements-nav d-flex justify-content-center m-0'>
                        <li><a className='item-nav' href="#home">Home</a></li>
                        <li><a className='item-nav' href="#about">About</a></li>
                        <li><a className='item-nav' href="#destination">Destination</a></li>
                        <li><a className='item-nav' href="#tour">Tour</a></li>
                        <li><a className='item-nav' href="#blog">Blog</a></li>
                    </ul>
                </div>
                <div className='container-btns-header d-flex flex-row justify-content-between'>
                    <a className='Linked' href="/profile"> <WhiteButton label={'Profiles'} alto={48} ancho={157} /></a>

                    <a className='Linked' href="/login"><PrimaryButton label={'Login'} alto={48} ancho={157} /> </a>
                </div>
            </header >
        </div >

    )
}

