import React from 'react'
import './Headauto_css/Headauto.css'
import { Link  } from 'react-router-dom';
import image from "../img/l1.webp"; 
import img from ".././img/r1.webp"; 
import Detaildanhmuc from './Deitaimenu/Menu'

const Headauto = () => {
  return (
    <div>
        <section class="content">
        <Link href="">
            <div id="left" style={{ backgroundImage:`url(${image})`, backgroundRepeat:"no-repeat", backgroundSize:"contain", height:800,width:180}} >
            {/* <img src={require('../img/l1.webp')} alt=''/> */}
            </div></Link>
            <div id="center">
                <Detaildanhmuc />
            </div>
            <div id="right" style={{ backgroundImage:`url(${img})`, backgroundRepeat:"no-repeat", backgroundSize:"contain", height:800,width:180}} ></div>
        </section>

    </div>
  )
}

export default Headauto