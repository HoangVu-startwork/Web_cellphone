import React, {useState, useEffect} from 'react'
import { NavLink, Link  } from 'react-router-dom';
import './Footer'
import './css/Header.css'
import './css/Headerkichthuoc.css'
import './css/danhmuc.css'
import './css/danhmuckichthuoc.css'
const Header = () => {
  const handleClick = event => {
    // 👇️ toggle visibility
    document.getElementById('danhmuc').style.display='block'
    // var x = document.getElementById('danhmuc');
    //     if (x.style.display === 'none') {
    //     x.style.display = 'block';
    // }else {
    //     x.style.display = 'none';
    // }
  };
  useEffect(() => {
    window.addEventListener('mouseup', function(event) {
            var box = document.getElementById('danhmuc');
            if (event.target !== box && event.target.parentNode !== box) {
                box.style.display ='none';
            }
        });
  })

  return (
    
    <>
   

<div className='war'>
<div className='topBarHeader'><div className='pulsingButton'></div><Link >Quà Tết trao yêu thương - Săn voucher ngay!</Link></div>
        <div id="wrapsewp">
        <img src="./img/Desktop-logo.gif" className="logo" alt=''/>
        <img src="./img/logo.png" className="logo1" alt=''/>
        <div id="header">
            <ul id="main-menu">
            <li className="">
                <div className="danhmuc" onClick={handleClick}><i id="iconc" className="fa fa-scroll"></i>
                    <p>Danh mục</p>
                </div>
                </li>
                <li className="aotolitt"><Link><span className="fa fa-location-arrow"></span>
                <div className="activeaauto">
                    <label className="label-label" htmlFor="standard-select">Xem giá tại </label>
                        <div className="select">
                        <select id="standard-select">
                            <option value="Option 1">Miền Nam</option>
                            <option value="Option 2">Miền Trung</option>
                            <option value="Option 3">Miền Bắc</option>
                        </select>
                    </div>
                </div></Link>
                </li>
                <li className="list"><Link href=""><i id="faphone" className="fa fa-phone"></i>
                    <div className="activet">
                    <label>Gọi mua hàng</label>
                    <p>18002097</p>
                    </div>
                </Link></li>
                <li className='input'><input type="text" className="type-1" placeholder="Bạn cần tìm gì ?"/></li>
                <li className="cuahang"><Link to=""><i id="iconc" className="fa fa-globe"></i>
                <div className="activet">
                    <label>Cửa hàng</label>
                    <p>gần bạn</p>
                    </div>
                    </Link></li>

                <li className="donhang"><Link href="" ><i id="iconc" className="fa fa-truck"></i>
                <div className="activet">
                    <label>Tra cứu</label>
                    <p>đơn hàng</p>
                    </div>
                </Link></li>
                <li className="giohang"><Link href=""><span>0</span><i id="iconc" className="fa fa-shopping-bag"></i>
                <div className="activet">
                    <label>Giỏ</label>
                    <p>hàng</p>
                    </div>
                    
                    {/* <span>0</span> */}
                    </Link></li>
                <li className="aotolit"><Link href="">
                    <div className="activetc">
                    <span id="inince" className="fa fa-user-graduate"></span>
                    <p>Smember</p>
                </div></Link>
                </li>
            </ul>
        </div>
        </div>
        </div>
    </>
  )
}

export default Header