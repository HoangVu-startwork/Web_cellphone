import React, {useState, useEffect} from 'react';
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import { Link  } from 'react-router-dom';

import Left_Laptop from "../../img/left-curved-arrow.png"
import Right_Laptop from "../../img/left-curved.png"
import Axios from 'axios';

import img from "../../img/download.svg"; 
import './css/phukien.css'
const Phukien = () => {
    const Data = [
        {
          id_danhmuc: 1,
          id_tensanpham: '1',
          danhmuc: 'Máy tính bàn',
        },
        {
          id_danhmuc: 2,
          id_tensanpham: '1',
          danhmuc: 'PC đồng bộ',
        },
        {
          id_danhmuc: 3,
          id_tensanpham: '1',
          danhmuc: 'PC Gaming',
        },
        {
          id_danhmuc: 4,
          id_tensanpham: '1',
          danhmuc: 'PC Đồ họa',
        },
        {
          id_danhmuc: 5,
          id_tensanpham: '1',
          danhmuc: 'Build PC',
        },
        {
          id_danhmuc: 6,
          id_tensanpham: '1',
          danhmuc: 'Màn hình văn phòng',
        }
      ]

      const [data, setData] = useState([]);

      useEffect(() => {
        const fetchData = async () => {
            try {
                const res = await Axios.get(`http://localhost:3005/phukien`);
                setData(res.data);
            }catch (err){
                console.log(err);
            }
        };
        fetchData();
    }, [])
    const sliderSettings_dienthoai =  {
        initialSlide: 0,
        autoplay: true,
        centerMode: false,
        swipeToSlide: true,
        pauseOnDotsHover: true,
        arrows: true,
        rows: 2,
        draggable: true,
        slidesToShow: 10,
        shift: 10,
        dots: false,
        infinite: true,
        wheel: true,
        speed: 500,
      };
  return (
    <div className='phukien'>
                <div className='sanpham_danhmuc'>
      <div className='sanpham_danhmuc_tensanpham'>PHỤ KIỆN</div>
      <div className='block_featured_product'>
        <Link to='danhmucdienthoai'>
        <div className='sanpham_danhmuc_loaidanhmuc'>Xem tất cả</div></Link>
      </div>
      </div>
      <div className='sanpham'>
      <Slider {...sliderSettings_dienthoai}>
      {data.map((card) => {
      return( 
        <div key="{index}" className="block-phukien">
      <Link >
      <div className="img-phukien" style={{ backgroundImage:`url(./phukien/${card.hinhanh})`, backgroundRepeat:"no-repeat", backgroundSize:"contain"}}><div className="block-phukien-text">{card.tenphukien}</div></div>
      </Link>
    </div>
    
    )})}
</Slider>
      </div>
    </div>
  )
}

export default Phukien