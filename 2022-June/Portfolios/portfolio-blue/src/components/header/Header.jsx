import React from 'react';
import "./Header.css";
import CTA from './CTA';
import ME from "../../assets/me1.png";
// import ME from "../../assets/or-about.jpg";
import HeaderSocial from "./HeaderSocial"
const Header = () => {
  return (
    <header>
      <div className="container header__container">
        <h5>Hello I'm</h5>
        <h1>Nishanth M </h1>
        <h5 className="text-light">Fullstack Developer</h5>
        <CTA />
        <HeaderSocial />
        <div className="me" >
          <img src={ME} alt='My Photo'  />
      </div>
      <a href="#contact" className='scroll__down' >Scroll Down</a>
      </div>
    </header>
  )
}

export default Header