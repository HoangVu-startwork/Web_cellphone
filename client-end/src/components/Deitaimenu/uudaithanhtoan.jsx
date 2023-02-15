import React, {useState, useEffect} from 'react';
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import { Link  } from 'react-router-dom';

import Axios from 'axios';

import './css/uudaithanhtoan.css'
const Uudaithanhtoan = () => {
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
                const res = await Axios.get(`http://localhost:3005/uudaithanhtoan`);
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
    <div className='uudaithanhtoan'>
           <div className='sanpham_danhmuc'>
      <div className='sanpham_danhmuc_tensanpham'>ƯU ĐÃI THANH TOÁN</div>
      </div>
      <div className='uudaithanhtoan_kung'>
      <Slider {...sliderSettings_linhkienmaytinh}>
      {data.map((card) => {
      return( 
        <div key="{index}">
      <Link >
      <img className="img-uudaithanhtoan" alt={card.title} src={`./uudaithanhtoan/${card.hinhanh}`} width="10" height="10" />
      {/* <div className="img-uudaithanhtoan" style={{backgroundImage:`url(./uudaithanhtoan/${card.hinhanh})`}}></div> */}
      </Link>
    </div>
    
    )})}
</Slider>
      </div>
    </div>
  )
}

export default Uudaithanhtoan