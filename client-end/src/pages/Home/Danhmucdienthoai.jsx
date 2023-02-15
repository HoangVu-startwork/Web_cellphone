import React, {useEffect, useState} from 'react'
import './css/danhmucdienthoai.css'
import { Link  } from 'react-router-dom';
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";
import Slider from "react-slick";
import Axios from 'axios';

const Danhmucdienthoai = () => {
  const [data, setData] = useState([]);

  useEffect(() => {
      const fetchData = async () => {
          try {
              const res = await Axios.get(`http://localhost:3005/quancaodienthoai`);
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
    rows: 1,
    draggable: true,
    slidesToShow: 1,
    shift: 10,
    dots: true,
    dotsClass: 'slick-dots1',
    infinite: true,
    wheel: true,
    speed: 500,
  };
  const sliderSettings_quancao =  {
    initialSlide: 0,
    autoplay: true,
    centerMode: false,
    swipeToSlide: true,
    pauseOnDotsHover: true,
    rows: 1,
    draggable: true,
    slidesToShow: 1,
    shift: 10,
    dots: true,
    dotsClass: 'slick-dots1',
    infinite: true,
    wheel: true,
    speed: 500,
  };
  return (
    <div>
        <section class="content_danhmuc_dienthoai">
            <div id="center_danhmuc_dienthoai">
               <div className='center_quancao_dienthoai'>
                <div className='center_quancao_dienthoai_quan'>
                <Slider {...sliderSettings_dienthoai}>
                  {data.map((slide) =>
                  <Link><img src={`./quancao/${slide.hinhanh}`} alt=''/></Link>
                    )}
                </Slider>
                </div>
                <div className='center_quancao_dienthoai_quan02'>
                <Slider {...sliderSettings_quancao}>
                  {data.map((slide) =>
                  <Link><img src={`./quancao/${slide.hinhanh}`} alt=''/></Link>
                    )}
                </Slider>
                </div>
               </div>
            </div>
        </section>
        <div className='danhmuc_dienthoai'>
          hsdojsdo
        </div>
    </div>
  )
}

export default Danhmucdienthoai