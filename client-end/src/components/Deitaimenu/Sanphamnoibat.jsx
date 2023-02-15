import React, {useState , useEffect} from 'react';
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import { Link  } from 'react-router-dom';
import Axios from 'axios';
import img from "../../img/download.svg"; 

import LeftArrow from "../../img/left-curved-arrow.png"
import RightArrow from "../../img/left-curved.png"
// import './css/deitaidanhmuc.css'
import './css/sanphamdienthoai.css'
// import {FaChevronLeft, FaChevronRight} from 'react-icons'


const Sanphamnoibat = () => {

  const [data, setData] = useState([]);


    useEffect(() => {
        const fetchData = async () => {
            try {
                const res = await Axios.get(`http://localhost:3005/`);
                setData(res.data);
            }catch (err){
                console.log(err);
            }
        };
        fetchData();
    }, [])
  
    const SlickArrowLeftdienthoai = ({ currentSlide, slideCount, ...props }) => (
      <img src={LeftArrow} alt="prevArrow" {...props} className="SlickArrowLeft"/>
    );
  
    const SlickArrowRightdienthoai = ({ currentSlide, slideCount, ...props }) => (
      <img src={RightArrow} alt="nextArrow" {...props} className="SlickArrowRight"/>
    );
      const sliderSettings_dienthoai =  {
        initialSlide: 0,
        autoplay: true,
        centerMode: false,
        swipeToSlide: true,
        pauseOnDotsHover: true,
        arrows: true,
        rows: 2,
        draggable: true,
        slidesToShow: 5,
        shift: 10,
        dots: false,
        infinite: true,
        wheel: true,
        speed: 500,
        prevArrow: <SlickArrowLeftdienthoai />,
      nextArrow: <SlickArrowRightdienthoai />,
      };

  
  return (
    <div className='sanpham'>
      <Slider {...sliderSettings_dienthoai}>
      {data.map((card) => {
        const formatter = new Intl.NumberFormat('vi', {
        style: 'currency',
        currency: 'VND',
        minimumFractionDigits: 2
        })
      return( 
        
        <div key="{index}" className="block-featured-product">
      <Link >
      <div className='product_price--percent' style={{ backgroundImage:`url(${img})`, backgroundRepeat:"no-repeat", backgroundSize:"contain"}}><p>Giảm 19%</p></div>
      <img className="img01" alt={card.title} src={`./dienthoai/anhdong/${card.hinhanh}`}/>
      <div className="block-featured-product-body">
        <div className="block-featured-title"><h3>{card.tensanpham}</h3></div>
        <div className="block-featured-text">{formatter.format(card.gia)}</div>
        <div>⭐⭐⭐⭐⭐</div>
        <div className='uudai'>
        { card.title === undefined && <div className="block-featured-text_uudai">{card.tensanpham}{card.tensanpham}</div>}
        </div>
      </div>
      </Link>
      <div className='yeuthich'> <p>Yêu thích <i class="fa fa-heart-o"></i></p></div>
    </div>
    
    )})}
</Slider>
      </div>
  )
}

export default Sanphamnoibat