import React from 'react'
import './Footer.css'
import SocialIconButton from '../../components/SocialIconButton/SocialIconButton'
export default function Footer() {
    return (
        <footer className='container-footer'>

            <div className='d-flex justify-content-between'>

                <div className='container-left-footer'>
                    <div>
                        <img className='img-footer' src="src/img/logo.png" alt="" />
                        <p className='paragraph-footer'>Book your trip in minute, get full Control for much longer.</p>
                    </div>
                    <div className='container-social-icons d-flex pe-3'>
                        <SocialIconButton icon={<i className='bx bxl-facebook'></i>} />
                        <SocialIconButton icon={<i className='bx bxl-instagram'></i>} />
                        <SocialIconButton icon={<i className='bx bxl-twitter' ></i>} />
                    </div>
                </div>
                <div className='container-right-footer d-flex justify-content-between'>
                    <div className="container-column1-footer col col-5">
                        <h4 className="title-footer">Company</h4>
                        <ul className="list-footer m-0 p-0">
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">About</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Careers</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Logistic</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Privacy & Policy</a></li>
                        </ul>
                    </div>

                    <div className="container-column2-footer col col-3.5">
                        <h4 className="title-footer">Contact</h4>
                        <ul className="list-footer m-0 p-0">
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Help/FAQ</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Press</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Affilates</a></li>
                        </ul>
                    </div>


                    <div className="container-column3-footer col col-3.5">
                        <h4 className="title-footer">More</h4>
                        <ul className="list-footer m-0 p-0">
                            <li className="item-list-footer "><a className="item-ancortag px-0" href="#">Press Centre</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Our Blog</a></li>
                            <li className="item-list-footer"><a className="item-ancortag px-0" href="#">Low fare tips</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div className='container-line-footer'>
                <div className='line-footer'></div>
            </div>

            <div className='d-flex justify-content-between'>
                <p className='paragraph-footer-copyright'>©Copyright, Trabook 2022 . All rights reserved</p>
                <p className='paragraph-footer-copyright'>Terms & Conditions</p>
            </div>
        </footer>
    )
}
