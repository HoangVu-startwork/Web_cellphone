import React, {useState, useEffect} from 'react';
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import { Link  } from 'react-router-dom';

import Axios from 'axios';

import './css/thuonghieu.css'
const Thuonghieu = () => {

      const [data, setData] = useState([]);

      useEffect(() => {
        const fetchData = async () => {
            try {
                const res = await Axios.get(`http://localhost:3005/thuonghieu`);
                setData(res.data);
            }catch (err){
                console.log(err);
            }
        };
        fetchData();
    }, [])
    const sliderSettings_linhkienmaytinh =  {
        initialSlide: 0,
        autoplay: true,
        centerMode: false,
        swipeToSlide: true,
        pauseOnDotsHover: true,
        arrows: true,
        rows: 1,
        draggable: true,
        slidesToShow: 4,
        shift: 10,
        dots: false,
        infinite: true,
        wheel: true,
        speed: 500,
      };
  return (
    <div className='thuonghieu'>
       <div className='sanpham_danhmuc'>
      <div className='sanpham_danhmuc_tensanpham'>CHUYÊN TRANG THƯƠNG HIỆU</div>
      </div>
      <div className='thuonghieu_kung'>
      <Slider {...sliderSettings_linhkienmaytinh}>
      {data.map((card) => {
      return( 
        <div key="{index}">
      <Link >
      <img className="img-uudaithanhtoan" alt={card.title} src={`./thuonghieu/${card.hinhanh}`} width="10" height="10" />
      {/* <div className="img-uudaithanhtoan" style={{backgroundImage:`url(./uudaithanhtoan/${card.hinhanh})`}}></div> */}
      </Link>
    </div>
    
    )})}
</Slider>
      </div>
    </div>
  )
}

export default Thuonghieu