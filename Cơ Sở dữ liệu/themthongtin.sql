SELECT * FROM CellphoneS.tbl_diachi;
SELECT * FROM CellphoneS.tbl_mucluc;
SELECT * FROM CellphoneS.tbl_danhmuc;
SELECT * FROM CellphoneS.tbl_loaisanpham;
SELECT * FROM CellphoneS.tbl_dienthoai;
SELECT * FROM CellphoneS.tbl_thongtinphanloai;
Select * FROM CellphoneS.tbl_mausac;

-- DROP TABLE CellphoneS.tbl_mausac;
-- DROP TABLE CellphoneS.tbl_thongtinbonho;
-- DROP TABLE CellphoneS.tbl_dienthoai;
-- DROP TABLE CellphoneS.tbl_loaisanpham;
-- DROP TABLE CellphoneS.tbl_danhmuc;

insert into CellphoneS.tbl_diachi (tendiachi)
value ('TP.HCM'), ('TP.HN');

insert into CellphoneS.tbl_noibat (noidung)
value ('Nổi bật'), ('Không nổi bật');

INSERT INTO CellphoneS.tbl_mucluc (tenmucluc, id_diachi) 
VALUES ('Dien Thoai', 1),('Laptop', 1),('Tivi', 1),('Am Thanh', 1),('Máy tính', 1), ('Phụ kiện', 1), ('Linh kiện máy tính', 1), ('Ưu đãi thanh toan', 1), ('Thương hiệu', 1);

INSERT INTO CellphoneS.tbl_danhmuc (tendanhmuc, id_mucluc) 
VALUES ('Apple', 1),('SAMSUNG', 1),('Oppo', 1),('Vivo', 1),('Nokia', 1);

insert into CellphoneS.tbl_loaisanpham (tenloaisanpham, id_danhmuc)
value ('IPHONE 14 SERIES', 1),('IPHONE 13 SERIES', 1), ('IPHONE 12 SERIES', 1), ('IPHONE 11 SERIES', 1),
('GALAXY NOTE', 2), ('GALAXY S', 2), ('GALAXY A', 2), ('GALAXY M', 2), ('GALAXY Z', 2), ('Oppo', 3);

insert into CellphoneS.tbl_thongtinphanloai (tenphanloai, id_loaisanpham)
value ('IPHONE 14', 1), ('IPHONE 14 Pro', 1), ('IPHONE 14 Pro Max', 1), ('IPHONE 13', 2), ('IPHONE 13 Pro', 2), ('IPHONE 13 Pro Max', 2),
('IPHONE 12', 3), ('IPHONE 12 Pro', 3), ('IPHONE 12 Pro Max', 3);

insert into CellphoneS.tbl_dienthoai (tensanpham, id_thongtinphanloai, ram, bonho, gia, hinhanh, hinhanh01, hinhanh02, hinhanh03, hinhanh04, hinhanh05, id_noibat)
value 
('iPhone 14 Pro 64GB Chính hãng VN/A ' , 1, '46GB', '124GB', '50000000', 'x_m_24.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 13 Pro 123GB Chính hãng VN/A 234567 iPhone 13 Pro 64GB Chính hãng VN/A 234567' , 5, '123GB', '1234GB', '30000000', '2_241_2.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 14 128GB| Chính hãng VN/A', 1, '6GB', '128GB', '32000000', 't_m_13.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 14 225GB| Chính hãng VN/A', 1, '6GB', '225GB', '43000000', 't_m_24.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 13 64GB| Chính hãng VN/A', 4, '6GB', '64GB', '23000000', '15_2_7_2_5.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 13 128GB | Chính hãng VN/A', 4, '6GB', '128GB', '43000000', '2_3_8_2_8.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 13 Pro Max 64GB| Chính hãng VN/A', 6, '6GB', '64GB', '53000000', 'photo_2022-09-28_21-58-51.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 12 64GB| Chính hãng VN/A', 7, '6GB', '64GB', '43000000', '3_51_1_10.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 12 Pro 64GB| Chính hãng VN/A', 8, '6GB', '64GB', '43000000','x_m_24.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp', '25.7_5.webp', 1),
('iPhone 12 Pro Max 64GB| Chính hãng VN/A', 9, '6GB', '64GB', '43000000', '4_187_1.webp', 'v_ng_18.webp', 't_m_18.webp', 'b_c_1_9.webp', '2522.webp','25.7_5.webp', 1);


insert into CellphoneS.tbl_mausac (tenmuasac, gia, id_dienthoai)
value ('Đỏ', '19790000', 1),
('Tím', '20290000', 1),
('Trắng', '20290000', 1),
('Đen', '20290000', 1),
('Xanh', '20290000', 2),
('Trắng', '22690000', 2),
('Tím', '23290000', 2),
('Trắng', '22990000', 2),
('Xanh', '22990000', 3),
('Đen', '22990000', 3),
('Trắng', '25990000', 3),
('Tím', '25990000', 3),
('Đỏ','25990000', 3),
('Đen', '25990000', 2);

insert into CellphoneS.tbl_phukien (id_phukien ,tenphukien, hinhanh,id_mucluc)
value 
(1, 'Nội bật', 'cate-1644.svg', 6),
(2, 'Phụ kiện Apple', 'cate-43.svg', 6),
(3, 'Dán màn hinh', 'cate-286.svg', 6),
(4, 'Ốp lưng - Bao da', 'cate-108.svg', 6),
(5, 'Cáp, sác', 'cate-114.svg', 6),
(6, 'Pin dự phòng', 'cate-122.svg', 6),
(7, 'Thiết bị mạng', 'cate-676.svg', 6),
(8, 'Gaming Gear', 'cate-669.svg', 6),
(9, 'Gimbal | Tay cầm chống rung ', 'cate-852.svg', 6),
(10, 'Thể nhớ, USB', 'cate-109.svg', 6),
(11, 'Chuột bàn phím', 'cate-663.svg', 6),
(12, 'Sim 4G số đẹp', 'sim_1_1.webp', 6),
(13, 'Camera hành trình', 'con_cam_htrinh.webp', 6),
(14, 'Phụ kiện Laptop', 'cate-44.svg', 6),
(15, 'Quạt mini', 'cate-775.svg', 6),
(16, 'Balo, túi chống sốc', 'cate-70.svg', 6),
(17, 'Dây đeo đồng hồ', 'cate-707.svg', 6),
(18, 'Ổ cứng di động', 'cate-750.svg', 6),
(19, 'Apple Care', 'cate-966.svg', 6),
(20, 'Camera an ninh', 'icon_cam_anninh.webp', 6);

insert into CellphoneS.tbl_linhkienmaytinh (tenlinhkien, hinhanh, mausac, id_mucluc)
value
('PC ráp sẳn CellphoneS', 'cate-868.svg', 'rgb(252, 165, 165)', 7),
('CPU', 'cpu_1.webp', 'rgb(253, 164, 175)', 7),
('Mainboard', 'mainboard_1.webp', 'rgb(249, 168, 212)', 7),
('Ram', 'ram_2.webp', 'rgb(196, 181, 253)', 7),
('Ổ cứng', 'ssd_2.webp','rgb(165, 180, 252)', 7),
('Card màn hình', 'vga.webp', 'rgb(147, 197, 253)', 7),
('Nguồn máy tính', 'psu.webp', 'rgb(110, 231, 183)', 7),
('Tán nhiệt', 't_n_nhi_t_2.webp', 'rgb(252, 211, 75', 7),
('Case máy tính', 'case_1.webp', 'rgb(253, 186, 116)', 7);


insert into CellphoneS.tbl_uudaithanhtoan (hinhanh, tenuudai, id_mucluc)
value 
('evo-banner-hp.webp', 'TPBank EVO', 8),
('Sliding.webp', 'VPBank', 8),
('uu-dai-thanh-toan-homecredit-normal-new.webp', 'VISA', 8),
('uu-dai-thanh-toan-jcb-normal-new.webp', 'JCB CARO', 8);

insert into CellphoneS.tbl_thuonghieu (tenhuonghieu, hinhanh,id_mucluc)
value
( 'apple','apple.webp', 9),
('ASUS', 'asus.webp', 9),
('Samsum','samsung.webp', 9),
('xiaomi','xiaomi.webp', 9);

CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_quancaodienthoi` (
  `id_quancaodienthoai` INT NOT NULL AUTO_INCREMENT,
  `hinhanh` VARCHAR(225) NULL,
  PRIMARY KEY (`id_quancaodienthoai`))
ENGINE = InnoDB;

insert into CellphoneS.tbl_quancaodienthoi (hinhanh) 
value
('ivo-y35-01-series-th2-cate-0024.webp'),
('vivo-v25-series-th2-cate-0024.webp'),
('cate-ip14-pro-max-th2.webp'),
('cate-dat-coc-s23.webp'),
('cate-banner-fold-4-th2-00399875.webp'),
('cate-oppo-reno08t-pre-order.webp')