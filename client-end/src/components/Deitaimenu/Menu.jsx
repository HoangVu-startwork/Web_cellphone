import React from 'react'
import { NavLink, Link  } from 'react-router-dom';
import './css/deitaidanhmuc.css'
import Post from './Post_menu'
import Center from './Center_menu';
import Sidebar from './Sidebar_menu'
import Horizontal from './Horizontal'
import Sanphamnoibat from './Sanphamnoibat'
import Sanphamdienthoai from './Sanphamdienthoai'
import Sanphamlatop from './Sanphamlaptop'
import Manghinh from './Sanphammanhinh'
import Maytinhban from './Sanphammaytinhbang'
import Amthanh from './Sanphamamthanh'
import Dongho from './sanphamdongho'
import Tivi from './Sanphamtivi'
import Phukien from './phukien'
import Linhkienmaytinh from './Linhkienmaytinh';
import Uudaithanhtoan from './uudaithanhtoan';
import Thuonghieu from './thuonghieu';

const danhmuc = () => {
  return (
    <div>
        <div id="content" className="container_menu">
          <div className="post_menu"><Post /></div>
          <div className="center_menu"><Center /></div>
          <div className="sidebar_menu"><Sidebar /></div>
        </div>
        <div className='horizontal-banner'><Horizontal /></div>
        <div className='content-sanphamnoibat-text'>SẢN PHẨM NỔI BẬT NHẤT</div>
        <div className='block-featured-product_ok'><Sanphamnoibat /></div>
        <div className='sanphamdienthoai'><Sanphamdienthoai /></div>
        <div className='sanphamlaptop'><Sanphamlatop /></div>
        <div className='sanphammanhinh'><Manghinh /></div>
        <div className='sanphammaytinhban'><Maytinhban /></div>
        <div className='sanphamamthanh'><Amthanh /></div>
        <div className='sanphamamthanh'><Dongho /></div>
        <div className='sanphamamthanh'><Tivi /></div>
        <div className='phukien'><Phukien /></div>
        <div className='linhkienmaytinh'><Linhkienmaytinh /></div>
        <div className='uudaithanhtoan'><Uudaithanhtoan /></div>
        <div className='thuonghieu'><Thuonghieu /></div>
    </div>
  )
}

export default danhmuc