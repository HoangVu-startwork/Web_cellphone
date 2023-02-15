import React, {useState, useEffect} from 'react'
import { Link  } from 'react-router-dom';

import './css/Head.css'

function Head() {
  return (
    <div className='head'> 
      <div className='head_form'>
          <div className='head_khun'>
            <ul>
              <li className='head_khun_text'>Tìm kiếm cửa hàng</li>
              <li><Link>Tìm cửa hàng gần nhất</Link></li>
              <li><Link>Mua hàng từ xa</Link></li>
              <li><Link>Gặp trực tiếp cửa hàng gần nhất</Link></li>
              <li className='head_khun_text'>Phương thức thanh toán</li>
              <li className='head_khun_img'>
                <img src='./uudaithanhtoan/alepay-logopay.png' alt=''></img>
                <img src='./uudaithanhtoan/alepay-logo.png' alt=''></img>
                <img src='./uudaithanhtoan/kredivo-logo.png' alt=''></img>
                <img src='./uudaithanhtoan/moca-logo.png' alt=''></img>
                <img src='./uudaithanhtoan/mpos-logo.png' alt=''></img>
                <img src='./uudaithanhtoan/onepay-logo.png' alt=''></img>
                <img src='./uudaithanhtoan/zalopay-logo.png' alt=''></img>
              </li>
            </ul>
          </div>
          <div className='head_khun'>
            <ul className='head_khun_text_hang'>
            <li><Link>Mua hàng và thanh toán Online</Link></li>
            <li><Link>Mua hàng trả góp Online</Link></li>
            <li><Link>Tra thông tin đơn hàng</Link></li>
            <li><Link>Tra điểm Smember</Link></li>
            <li><Link>Xem ưu đãi Smember</Link></li>
            <li><Link>Tra thông tin bảo hành</Link></li>
            <li><Link>Tra cứu hoá đơn điện tử</Link></li>
            <li><Link>Trung tâm bảo hành chính hãng</Link></li>
            <li><Link>Quy định về việc sao lưu dữ liệu</Link></li>
            <li><Link>Dịch vụ bảo hành điện thoại</Link></li>
            <li><Link>Dịch vụ bảo hành mở rộng</Link></li>
            </ul>
          </div>
          <div className='head_khun'>
          <ul className='head_khun_text_hang'>
            <li><Link>Khách hàng doanh nghiệp</Link></li>
            <li><Link>Ưu đãi thanh toán</Link></li>
            <li><Link>Quy chế hoạt động</Link></li>
            <li><Link>Chính sách Bảo hành</Link></li>
            <li><Link>Liên hệ hợp tác kinh doanh</Link></li>
            <li><Link>Ứng dụng</Link></li>
            </ul>
          </div>
          <div className='head_khun'>
          <ul className='head_khun_text_hang'>
            <li><Link>Gọi mua hàng 1800 2097 (7h30 - 22h00)</Link></li>
            <li><Link>Gọi mua hàng 1800 2063 (8h00 - 21h30)</Link></li>
            <li><Link>Gọi mua hàng 1800 2064 (8h00 - 21h00)</Link></li>
            <h3 className="f-title">Team Solutions</h3>
                                <div class="f_social_icon">
                                    <Link href="#" className="fab fa-facebook"></Link>
                                    <Link href="#" className="fab fa-twitter"></Link>
                                    <Link href="#" className="fab fa-linkedin"></Link>
                                    <Link href="#" className="fab fa-pinterest"></Link>
                                </div>
            </ul>
          </div>
      </div>
    </div>
  )
}

export default Head