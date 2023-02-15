import React from 'react'
import './css/sidebar_menu.css'
import { Link  } from 'react-router-dom';


const Sidebar_menu = () => {
    const slidesData = [
    {
        id: 1,
        img: '../../img/22490-fold.webp',
        
    },
    {
        id: 2,
        img: '../../img/airpod2-259.webp',

    },
    {
        id: 3,
        img: '../../img/RightBanner_690x300_ASUS-VIVOBOOK.webp',
    }
];
  return (
    <div className='right-banner'>
            <Link className='right-banner__item'>
                {/* <img className='right-banner__img' /> */}
                {slidesData.map((slide) =>
            <div >
              <img className='right-banner__img' src={slide.img} alt=''/>
            </div>
          )}
            </Link>
    </div>
  )
}

export default Sidebar_menu