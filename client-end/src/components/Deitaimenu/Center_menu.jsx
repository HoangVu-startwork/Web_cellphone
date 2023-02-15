import React, {useEffect, useState} from 'react'
import './css/center_menu.css'
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import Slider from "react-slick";
import {Link  } from 'react-router-dom';

const Center_menu = () => {

    const [nav1, setNav1] = useState(null);
    const [nav2, setNav2] = useState(null);
    const [slider1, setSlider1] = useState(null);
    const [slider2, setSlider2] = useState(null);


  const settingsMain = {
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplaySpeed : 9000,
    arrows: false,
    fade: true,
    // dots: true,
    autoplay: true,
    initialSlide: 2,
    infinite: true,
    dotsClass: "slick-dots custom-indicator"
  };

  const settingsThumbs = {
    slidesToShow: 5,
    slidesToScroll: 1,
    autoplay: true,
    arrows: false,
    initialSlide: 2,
    infinite: true,
    autoplaySpeed : 9000,
    asNavFor: 'slick-dots',
    centerMode: true,
    swipeToSlide: true,
    focusOnSelect: true,
    centerPadding: '10px',
    dotsClass: "slick-dots custom-indicator",
    // className: 'slick-dots custom-indicator',
  };
  useEffect(() => {
    setNav1(slider1);
    setNav2(slider2);
    
  });
const slidesData = [
    {
        id: 1,
        img: '../../img/fold-t1-new999.webp',
        label: 'Z FLIP4|FOLD4',
        text: 'Hot sale giá sốc'
        
    },
    {
        id: 2,
        img: '../../img/rog6-batman-sliding.webp',
        label: 'IPHONE 14 PRO MAX',
        text: 'Đủ màu giá tốt'
    },
    {
        id: 3,
        img: '../../img/asus unwrap.webp',
        label: 'WATCH GT3 PRO',
        text: 'Siêu sale đón tết'
    },
    {
        id: 4,
        img: '../../img/may-chieu-sliding-new.webp',
        label: 'MÁY CHIẾU BEECUBE',
        text: 'Hàng xịn giá tốt'
    },
    {
        id: 5,
        img: '../../img/watch-gt-3-proo.webp',
        label: 'ROG 6 BATMAN',
        text: 'Hàng xịn giá hời',
    },
];
  return (
    <div className="Canter_menu_css">
      <Slider className='Canter_menu_css_img'
        {...settingsMain}
        asNavFor={nav2}
        ref={slider => (setSlider1(slider))}
      >
          {slidesData.map((slide) =>
            <div key={slide.id}><Link>
              <img src={slide.img} alt=''/></Link>
            </div>
          )}
      </Slider>
      <Slider className='Canter_menu_css_label'
        {...settingsThumbs}
        asNavFor={nav1}
        ref={slider => (setSlider2(slider))}>
          {slidesData.map((slide) =>

              <div className='label_css'>{slide.label} <br/> {slide.text}</div>
            )}
      </Slider>
  <div>
</div>
</div>

    
  )
    
}

export default Center_menu