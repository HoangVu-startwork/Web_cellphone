import React from 'react'
import { NavLink, Link  } from 'react-router-dom';
import './css/post_menu.css'
const Post_menu = () => {
  return (
    <div>
        {/* <div className="danhmuc_menu"> */}
            <div className="war_menu"> 
                <div className="danhmuc_menu">
                    <ul>
                        <li><Link to=""><span className="fa fa-mobile"></span><span className="menu_span">Điện thoại</span><span className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu">
                                <li><span className="fron-ul">Chọn theo hãng</span>
                                    <ul className="sub-menu-tap">
                                        <li><Link to="">Apple</Link></li>
                                        <li><Link to="">Samsung</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">OPPO</Link></li>
                                        <li><Link to="">Nokia</Link></li>
                                        <li><Link to="">realme</Link></li>
                                        <li><Link to="">Asus</Link></li>
                                        <li><Link to="">vivo</Link></li>
                                        <li><Link to="">OnePlus</Link></li>
                                        <li><Link to="">Nubia</Link></li>
                                        <li><Link to="">Tecno</Link></li>
                                        <li><Link to="">Điện thoại phổ thông</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo mức giá</span>
                                    <ul className="sub-menu-tap">
                                        <li><Link to="">Dưới 5 triệu</Link></li>
                                        <li><Link to="">Từ 10 - 15 triệu</Link></li>
                                        <li><Link to="">Từ 15 - 20 triệu</Link></li>
                                        <li><Link to="">Trên 20 triệu</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Loại điện thoại</span>
                                    <ul className="sub-menu-tap">
                                        <li><Link to="">Android</Link></li>
                                        <li><Link to="">iPhone (IOS)</Link></li>
                                        <li><Link to="">Điện thoại phổ thông</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo nhu cầu</span>
                                    <ul className="sub-menu-tap">
                                        <li><Link to="">Hỗ trở 5G</Link></li>
                                        <li><Link to="">Điện thoại Gaming</Link></li>
                                        <li><Link to="">Sạc không dây</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Điện thoại hot</span>
                                    <ul className="sub-menu-tap">
                                        <li><Link to="">Galaxy Z Fold4</Link></li>
                                        <li><Link to="">Galaxy Z Folp4</Link></li>
                                        <li><Link to="">iPhone 13</Link></li>
                                        <li><Link to="">iPhone 12</Link></li>
                                        <li><Link to="">iPhone 11</Link></li>
                                        <li><Link to="">SamSum S22 Ultra</Link></li>
                                        <li><Link to="">Xlaomi Redmi Note 11</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-laptop"></span><span className="menu_span">Laptop</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu1">
                                <li><span className="fron-ul">Chọn theo hãng</span>
                                    <ul className="sub-menu-tap1">
                                        <li><Link to="">Mac</Link></li>
                                        <li><Link to="">HP</Link></li>
                                        <li><Link to="">Dell</Link></li>
                                        <li><Link to="">ASUS</Link></li>
                                        <li><Link to="">Lenovo</Link></li>
                                        <li><Link to="">Microsoft Surface</Link></li>
                                        <li><Link to="">Acer</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">LG</Link></li>
                                        <li><Link to="">Huawei</Link></li>
                                        <li><Link to="">MSI</Link></li>
                                        <li><Link to="">Gigabyte</Link></li>
                                        <li><Link to="">Fujitsu</Link></li>
                                        <li><Link to="">Intel</Link></li>
        
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo nhu cầu</span>
                                    <ul className="sub-menu-tap1">
                                        <li><Link to="">Văn phòng</Link></li>
                                        <li><Link to="">Gaming</Link></li>
                                        <li><Link to="">Mỏng nhẹ</Link></li>
                                        <li><Link to="">Đồ hoạ - kỹ thuật</Link></li>
                                        <li><Link to="">Sinh viên</Link></li>
                                        <li><Link to="">Cảm ứng</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo mức giá</span>
                                    <ul className="sub-menu-tap1">
                                        <li><Link to="">Dưới 5 triệu</Link></li>
                                        <li><Link to="">Từ 10 - 15 triệu</Link></li>
                                        <li><Link to="">Từ 15 - 20 triệu</Link></li>
                                        <li><Link to="">Trên 20 triệu</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Sản phẩm hot</span>
                                    <ul className="sub-menu-tap1">
                                        <li><Link to="">Macbook Pro M2 2022 512GB</Link></li>
                                        <li><Link to="">Macbook Pro M2 2022 256GB</Link></li>
                                        <li><Link to="">Macbook Air M2 2022 512GB</Link></li>
                                        <li><Link to="">Macbook Air M2 2022 256GB</Link></li>
                                        <li><Link to="">Asus Zenbook 13 Oled</Link></li>
                                        <li><Link to="">Lenovo Ideappad 3 15IML05</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-tablet"></span><span className="menu_span">Máy tính bảng</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu2">
                                <li><span className="fron-ul">Chọn theo hãng</span>
                                    <ul className="sub-menu-tap2">
                                        <li><Link to="">iPad</Link></li>
                                        <li><Link to="">SamSum</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">Lenovo</Link></li>
                                        <li><Link to="">Nokia</Link></li>
                                        <li><Link to="">Alcatel</Link></li>
                                        <li><Link to="">Kindle</Link></li>
                                        <li><Link to="">Máy đọc sách</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo mức giá</span>
                                    <ul className="sub-menu-tap2">
                                        <li><Link to="">Dưới 3 triệu</Link></li>
                                        <li><Link to="">Từ 3 - 6 triệu</Link></li>
                                        <li><Link to="">Từ 6 - 9 triệu</Link></li>
                                        <li><Link to="">Từ 9 - 12 triệu</Link></li>
                                        <li><Link to="">Trên 12 triệu</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo nhu cầu</span>
                                    <ul className="sub-menu-tap2">
                                        <li><Link to="">Chơi game</Link></li>
                                        <li><Link to="">Học tập - văn phòng</Link></li>
                                        <li><Link to="">Giải trí</Link></li>
                                        <li><Link to="">Đồ hoạ - sáng tạo</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo kích thước màn hình</span>
                                    <ul className="sub-menu-tap2">
                                        <li><Link to="">7 - 8 inch (nhỏ gọn)</Link></li>
                                        <li><Link to="">10 - 12 inch (trung bình)</Link></li>
                                        <li><Link to="">12 inch (kích thước lớn)</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Điện thoại hot</span>
                                    <ul className="sub-menu-tap2">
                                        <li><Link to="">Samsung Tab S8 Ultra</Link></li>
                                        <li><Link to="">iPad Gen 9</Link></li>
                                        <li><Link to="">iPad Air 5(2022)</Link></li>
                                        <li><Link to="">Xlaomi Pad 5</Link></li>
                                        <li><Link to="">Lenovo Tab P11 Pro</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-headphones"></span><span className="menu_span">Âm thanh</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu3">
                                <li><span className="fron-ul">Chọn loại tai nghe</span>
                                    <ul className="sub-menu-tap3">
                                        <li><Link to="">Tai nghe Bluetooth</Link></li>
                                        <li><Link to="">Tai nghe chụp tai</Link></li>
                                        <li><Link to="">Tai nghe có dây</Link></li>
                                        <li><Link to="">Tai nghe thể thao</Link></li>
                                        <li><Link to="">Tai nghe Gaming</Link></li>
                                        <li><Link to="">Xem tất cả tai nghe</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Hãng tai nghe</span>
                                    <ul className="sub-menu-tap3">
                                        <li><Link to="">Apple</Link></li>
                                        <li><Link to="">JBL</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">Samsung</Link></li>
                                        <li><Link to="">Sony</Link></li>
                                        <li><Link to="">LG</Link></li>
                                        <li><Link to="">Soundpeats</Link></li>
                                        <li><Link to="">Huawel</Link></li>
                                        <li><Link to="">Havit</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn loại loa</span>
                                    <ul className="sub-menu-tap3">
                                        <li><Link to="">Loa Bluetooth</Link></li>
                                        <li><Link to="">Loa mini</Link></li>
                                        <li><Link to="">Loa Karaoke</Link></li>
                                        <li><Link to="">Loa Soundpeats</Link></li>
                                        <li><Link to="">Xem tất cả loa</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Hãng loa</span>
                                    <ul className="sub-menu-tap3">
                                        <li><Link to="">JBL</Link></li>
                                        <li><Link to="">LG</Link></li>
                                        <li><Link to="">Sony</Link></li>
                                        <li><Link to="">Marshall</Link></li>
                                        <li><Link to="">Harman Kardon</Link></li>
                                        <li><Link to="">Huawei</Link></li>
                                        <li><Link to="">Anker</Link></li>
                                        <li><Link to="">B&O</Link></li>
                                        <li><Link to="">Bose</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Sản phẩm nổi bật</span>
                                    <ul className="sub-menu-tap3">
                                        <li><Link to="">Galaxy Buds 2 Pro</Link></li>
                                        <li><Link to="">Airpods Pro</Link></li>
                                        <li><Link to="">JBL Live Pro 2</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-clock"></span><span className="menu_span">Đồng hồ</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu4">
                                <li><span className="fron-ul">Loại đồng hồ</span>
                                    <ul className="sub-menu-tap4">
                                        <li><Link to="">Đồng hồ thông minh</Link></li>
                                        <li><Link to="">Vòng đeo tay thông minh</Link></li>
                                        <li><Link to="">Đồng hồ định vị trẻ em</Link></li>
                                        <li><Link to="">Dây đeo</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo thương hiệu</span>
                                    <ul className="sub-menu-tap4">
                                        <li><Link to="">Apple Watch</Link></li>
                                        <li><Link to="">Samsung</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">Huawei</Link></li>
                                        <li><Link to="">Coros</Link></li>
                                        <li><Link to="">Garmin</Link></li>
                                        <li><Link to="">Huami</Link></li>
                                        <li><Link to="">Oppo</Link></li>
                                        <li><Link to="">Soundpeats</Link></li>
                                        <li><Link to="">Haylou</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Kích cỡ mặt đồng hồ</span>
                                    <ul className="sub-menu-tap4">
                                        <li><Link to="">Cho nam 42 - 47 mm</Link></li>
                                        <li><Link to="">cho nữ  42 mm</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Tính năng</span>
                                    <ul className="sub-menu-tap4">
                                        <li><Link to="">Hỗ trợ Esim</Link></li>
                                        <li><Link to="">Màn hình luôn bật</Link></li>
                                        <li><Link to="">Đo oxy trong máu SpO2</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Sản phẩm nổi bật</span>
                                    <ul className="sub-menu-tap4">
                                        <li><Link to="">Galaxy Watch5</Link></li>
                                        <li><Link to="">Galaxy Watch5 Pro</Link></li>
                                        <li><Link to="">Apple Watch Series 7</Link></li>
                                        <li><Link to="">Apple Watch Series 6</Link></li>
                                        <li><Link to="">Appe Watch SE</Link></li>
                                        <li><Link to="">Huawel Watch Fit 2</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-laptop-house"></span><span className="menu_span">Nhà thông minh</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu5">
                                <li><span className="fron-ul">Gia dụng thông minh</span>
                                    <ul className="sub-menu-tap5">
                                        <li><Link to="">Robot hút bụi</Link></li>
                                        <li><Link to="">Máy hút bụi</Link></li>
                                        <li><Link to="">Đồ gia dụng</Link></li>
                                        <li><Link to="">Quạt thông minh</Link></li>
                                        <li><Link to="">Đèn thông minh</Link></li>
                                        <li><Link to="">Ổ cấm điện</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Giải trí tại gia</span>
                                    <ul className="sub-menu-tap5">
                                        <li><Link to="">TV Box</Link></li>
                                        <li><Link to="">Máy chiếu</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chăm sóc sức khoẻ</span>
                                    <ul className="sub-menu-tap5">
                                        <li><Link to="">Máy lọc không khí</Link></li>
                                        <li><Link to="">Cân sức khoẻ</Link></li>
                                        <li><Link to="">Ghế công thái học</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Thiết bị an ninh</span>
                                    <ul className="sub-menu-tap5">
                                        <li><Link to="">Khoá thông minh</Link></li>
                                        <li><Link to="">Cảm biến</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Sản phẩm hot</span>
                                    <ul className="sub-menu-tap5">
                                        <li><Link to="">Roborock S7 Maxv Ultra</Link></li>
                                        <li><Link to="">Ecovacs Deebot X1 OMNI</Link></li>
                                        <li><Link to="">Xiaomi Vaccum Mop 2 Lite</Link></li>
                                        <li><Link to="">Xiaomi Mi Purifier 4 Lite</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-keyboard"></span><span className="menu_span">Phụ kiện</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu6">
                                <li><span className="fron-ul">Phụ kiện di động</span>
                                    <ul className="sub-menu-tap6">
                                        <li><Link to="">Phụ kiện Apple</Link></li>
                                        <li><Link to="">Dán màn hình</Link></li>
                                        <li><Link to="">Ốp lưng - Bao da</Link></li>
                                        <li><Link to="">Thẻ nhớ</Link></li>
                                        <li><Link to="">Apple Care</Link></li>
                                        <li><Link to="">Sim 4G số đẹp</Link></li>
                                        <li><Link to="">Cáp, sạc</Link></li>
                                        <li><Link to="">Pin dư phòng</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Phụ kiện Laptop</span>
                                    <ul className="sub-menu-tap6">
                                        <li><Link to="">Chuột, bàn phím</Link></li>
                                        <li><Link to="">Ba lô - Túi xách</Link></li>
                                        <li><Link to="">Phần mềm</Link></li>
                                        <li><Link to="">Webcam</Link></li>
                                        <li><Link to="">Giá đỡ</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Thiết bị mạng</span>
                                    <ul className="sub-menu-tap6">
                                        <li><Link to="">Thiết bị phát sóng WiFi</Link></li>
                                        <li><Link to="">Bộ phát wifi di động</Link></li>
                                        <li><Link to="">Bộ kích sóng WiFi</Link></li>
                                        <li><Link to="">Xem tất cả thiết bị mạng</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Camera</span>
                                    <ul className="sub-menu-tap6">
                                        <li><Link to="">Camera hành trình</Link></li>
                                        <li><Link to="">Camera an ninh</Link></li>
                                        <li><Link to="">Gimbal</Link></li>
                                        <li><Link to="">Xem tất cả Camera</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Phụ kiện khác</span>
                                    <ul className="sub-menu-tap6">
                                        <li><Link to="">Dây đeo đồng hồ</Link></li>
                                        <li><Link to="">Dây đeo Airtag</Link></li>
                                        <li><Link to="">Phụ kiện tiện ích</Link></li>
                                        <li><Link to="">Phụ kiện ô tô</Link></li>
                                        <li><Link to="">Đồ chơi trẻ em</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-desktop"></span><span className="menu_span">PC - Màn hình</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu7">
                                <li> <span className="fron-ul">Máy tính để bàn</span>
                                    <ul className="sub-menu-tap7">
                                        <li><Link to="">PC ráp sẵn CPS</Link></li>
                                        <li><Link to="">Máy tính All In One</Link></li>
                                        <li><Link to="">PC đồng bộ</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Linh kiện máy tính</span>
                                    <ul className="sub-menu-tap7">
                                        <li><Link to="">CPU</Link></li>
                                        <li><Link to="">Mainboard</Link></li>
                                        <li><Link to="">RAM</Link></li>
                                        <li><Link to="">Ổ cứng</Link></li>
                                        <li><Link to="">Nguồn máy tính</Link></li>
                                        <li><Link to="">Card màn hình</Link></li>
                                        <li><Link to="">Tản nhiệt</Link></li>
                                        <li><Link to="">Case máy tính</Link></li>
                                        <li><Link to="">Xem tất cả linh kiện</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn màng hình theo hãng</span>
                                    <ul className="sub-menu-tap7">
                                        <li><Link to="">ASUS</Link></li>
                                        <li><Link to="">LG</Link></li>
                                        <li><Link to="">Samsung</Link></li>
                                        <li><Link to="">DELL</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">ViewSonic</Link></li>
                                        <li><Link to="">HUAWEI</Link></li>
                                        <li><Link to="">HP</Link></li>
                                        <li><Link to="">HKC</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn màng hình theo nhu cầu</span>
                                    <ul className="sub-menu-tap7">
                                        <li><Link to="">Màng hình Gaming</Link></li>
                                        <li><Link to="">Màn hình văn phòng</Link></li>
                                        <li><Link to="">Màn hình đồ hoạ</Link></li>
                                        <li><Link to="">Xem tất cả màn hình</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Thiết bị văn phòng</span>
                                    <ul className="sub-menu-tap7">
                                        <li><Link to="">Giá treo màn hình</Link></li>
                                        <li><Link to="">Máy in</Link></li>
                                        <li><Link to="">Phần mềm</Link></li>
                                        <li><Link to="">Gaming Gear</Link></li>
                                        <li><Link to="">Bàn - ghế công thái học</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><Link to=""><span className="fa fa-tv"></span><span className="menu_span">Tivi</span><span id="fafa" className="fa fa-chevron-right"></span></Link>
                            <ul className="sub post-auto-menu8">
                                <li><span className="fron-ul">Chọn theo hãng</span>
                                    <ul className="sub-menu-tap8">
                                        <li><Link to="">Samsung</Link></li>
                                        <li><Link to="">LG</Link></li>
                                        <li><Link to="">Xiaomi</Link></li>
                                        <li><Link to="">Coocaa</Link></li>
                                        <li><Link to="">Casper</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo mức giá</span>
                                    <ul className="sub-menu-tap8">
                                        <li><Link to="">Từ 9 - 12 triệu</Link></li>
                                        <li><Link to="">Từ 12 - 15 triệu</Link></li>
                                        <li><Link to="">Trên 15 triệu</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Loại tivi</span>
                                    <ul className="sub-menu-tap8">
                                        <li><Link to="">Smart tivi</Link></li>
                                        <li><Link to="">Tivi LED</Link></li>
                                        <li><Link to="">Tivi NamoCell</Link></li>
                                        <li><Link to="">Tivi QLED</Link></li>
                                        <li><Link to="">Tivi thiết kế đặt biệt</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Chọn theo kích thước</span>
                                    <ul className="sub-menu-tap8">
                                        <li><Link to="">32 inch</Link></li>
                                        <li><Link to="">43 inch</Link></li>
                                        <li><Link to="">50 inch</Link></li>
                                        <li><Link to="">55 inch</Link></li>
                                        <li><Link to="">65 inch</Link></li>
                                        <li><Link to="">85 inch</Link></li>
                                    </ul>
                                </li>
                                <li><span className="fron-ul">Thiết bị văn phòng</span>
                                    <ul className="sub-menu-tap8">
                                        <li><Link to="">Tivi Xiaomi A2 55 inch</Link></li>
                                        <li><Link to="">Tivi Xiaomi P1 55 inch</Link></li>
                                        <li><Link to="">LG StambyMe</Link></li>
                                        <li><Link to="">Khung treo tivi</Link></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
         </div>
    // </div>
  )
}

export default Post_menu