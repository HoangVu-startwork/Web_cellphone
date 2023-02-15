import React, {useState, useEffect} from 'react';
import Slider from 'react-slick'
import 'slick-carousel/slick/slick.css'
import 'slick-carousel/slick/slick-theme.css'
import Axios from 'axios';
import { Link  } from 'react-router-dom';
import img from "../../img/download.svg"; 
import Left_Laptop from "../../img/left-curved-arrow.png"
import Right_Laptop from "../../img/left-curved.png"
import './css/sanphaplaptop.css'

const Sanphamlaptop = () => {

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
    const Data = [
    {
      id_danhmuc: 1,
      id_tensanpham: '1',
      danhmuc: 'Macbook',
    },
    {
      id_danhmuc: 2,
      id_tensanpham: '1',
      danhmuc: 'Thinkpad',
    },
    {
      id_danhmuc: 3,
      id_tensanpham: '1',
      danhmuc: 'Asus',
    },
    {
      id_danhmuc: 4,
      id_tensanpham: '1',
      danhmuc: 'Surface',
    },
    {
      id_danhmuc: 5,
      id_tensanpham: '1',
      danhmuc: 'Acer',
    },
    {
      id_danhmuc: 6,
      id_tensanpham: '1',
      danhmuc: 'MSI',
    },
    {
      id_danhmuc: 7,
      id_tensanpham: '1',
      danhmuc: 'Dell',
    },
    {
      id_danhmuc: 8,
      id_tensanpham: '1',
      danhmuc: 'HP',
    },
    {
      id_danhmuc: 9,
      id_tensanpham: '1',
      danhmuc: 'HUAWEI',
    }
  ]
  const SlickArrowLeftlaptop = ({ currentSlide, slideCount, ...props }) => (
    <img src={Left_Laptop} alt="prevArrow" {...props} className="SlickArrowLeft_laptop"/>
  );

  const SlickArrowRightlaptop = ({ currentSlide, slideCount, ...props }) => (
    <img src={Right_Laptop} alt="nextArrow" {...props} className="SlickArrowRight_laptop"/>
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
      prevArrow: <SlickArrowLeftlaptop />,
    nextArrow: <SlickArrowRightlaptop />,
    };

  return (
    <div>
        <div className='sanpham_danhmuc'>
      <div className='sanpham_danhmuc_tensanpham'>LAPTOP</div>
      <div className='block_featured_product'>
        {Data.map((slide) =>
        <Link>
          <div className='sanpham_danhmuc_loaidanhmuc'>{slide.danhmuc}</div></Link>
        )}
        <Link to='danhmucdienthoai'>
        <div className='sanpham_danhmuc_loaidanhmuc'>Xem tất cả</div></Link>
      </div>
      </div>
      <div className='sanpham'>
      <Slider {...sliderSettings_dienthoai}>
      {data.map((card, index) => {
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
    </div>)
      })}
</Slider>
      </div>
    </div>
  )
}

export default Sanphamlaptop