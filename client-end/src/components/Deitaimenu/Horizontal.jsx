import React from 'react'
import {Link  } from 'react-router-dom';
import './css/Horizontal_css.css'

const Horizontal = () => {
  return (
    <div >
        <Link className='horizontal-banner__item'>
        <img src="../img/spe-tet-des.webp" className="logo" alt=''/>
        </Link>
    </div>
  )
}

export default Horizontal