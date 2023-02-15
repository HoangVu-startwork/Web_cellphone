-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema CellphoneS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema CellphoneS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `CellphoneS` DEFAULT CHARACTER SET utf8 ;
USE `CellphoneS` ;

-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_diachi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_diachi` (
  `id_diachi` INT NOT NULL AUTO_INCREMENT,
  `tendiachi` VARCHAR(225) NULL,
  PRIMARY KEY (`id_diachi`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_chitietdiachi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_chitietdiachi` (
  `id_chitietdiachi` INT NOT NULL AUTO_INCREMENT,
  `sdt` VARCHAR(11) NULL,
  `chitietdiachi` VARCHAR(300) NULL,
  `id_diachi` INT NOT NULL,
  PRIMARY KEY (`id_chitietdiachi`),
  INDEX `fk_tbl_chitietdiachi_tbl_diachi_idx` (`id_diachi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_chitietdiachi_tbl_diachi`
    FOREIGN KEY (`id_diachi`)
    REFERENCES `CellphoneS`.`tbl_diachi` (`id_diachi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mucluc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mucluc` (
  `id_mucluc` INT NOT NULL AUTO_INCREMENT,
  `tenmucluc` VARCHAR(225) NULL,
  `id_diachi` INT NOT NULL,
  PRIMARY KEY (`id_mucluc`),
  INDEX `fk_tbl_sanpham_tbl_diachi1_idx` (`id_diachi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_sanpham_tbl_diachi1`
    FOREIGN KEY (`id_diachi`)
    REFERENCES `CellphoneS`.`tbl_diachi` (`id_diachi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmuc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmuc` (
  `id_danhmuc` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(300) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmuc`),
  INDEX `fk_tbl_danhmuc_tbl_sanpham1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmuc_tbl_sanpham1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaisanpham`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaisanpham` (
  `id_loaisanpham` INT NOT NULL AUTO_INCREMENT,
  `tenloaisanpham` VARCHAR(225) NULL,
  `id_danhmuc` INT NOT NULL,
  PRIMARY KEY (`id_loaisanpham`),
  INDEX `fk_tbl_loaisanpham_tbl_danhmuc1_idx` (`id_danhmuc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaisanpham_tbl_danhmuc1`
    FOREIGN KEY (`id_danhmuc`)
    REFERENCES `CellphoneS`.`tbl_danhmuc` (`id_danhmuc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtinphanloai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtinphanloai` (
  `id_thongtinphanloai` INT NOT NULL AUTO_INCREMENT,
  `tenphanloai` VARCHAR(225) NULL,
  `id_loaisanpham` INT NOT NULL,
  PRIMARY KEY (`id_thongtinphanloai`),
  INDEX `fk_tbl_thongtinphanloai_tbl_loaisanpham1_idx` (`id_loaisanpham` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtinphanloai_tbl_loaisanpham1`
    FOREIGN KEY (`id_loaisanpham`)
    REFERENCES `CellphoneS`.`tbl_loaisanpham` (`id_loaisanpham`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_noibat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_noibat` (
  `id_noibat` INT NOT NULL AUTO_INCREMENT,
  `noidung` VARCHAR(45) NULL,
  PRIMARY KEY (`id_noibat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_dienthoai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_dienthoai` (
  `id_dienthoai` INT NOT NULL AUTO_INCREMENT,
  `tensanpham` VARCHAR(300) NULL,
  `hinhanh` VARCHAR(300) NULL,
  `hinhanh01` VARCHAR(300) NULL,
  `hinhanh02` VARCHAR(300) NULL,
  `hinhanh03` VARCHAR(300) NULL,
  `hinhanh04` VARCHAR(300) NULL,
  `hinhanh05` VARCHAR(300) NULL,
  `ram` VARCHAR(225) NULL,
  `bonho` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_thongtinphanloai` INT NOT NULL,
  `id_noibat` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  PRIMARY KEY (`id_dienthoai`),
  INDEX `fk_tbl_dienthoai_tbl_thongtinphanloai1_idx` (`id_thongtinphanloai` ASC) VISIBLE,
  INDEX `fk_tbl_dienthoai_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_dienthoai_tbl_thongtinphanloai1`
    FOREIGN KEY (`id_thongtinphanloai`)
    REFERENCES `CellphoneS`.`tbl_thongtinphanloai` (`id_thongtinphanloai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_dienthoai_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausac` (
  `id_mausac` INT NOT NULL AUTO_INCREMENT,
  `tenmuasac` VARCHAR(400) NULL,
  `gia` VARCHAR(225) NULL,
  `id_dienthoai` INT NOT NULL,
  PRIMARY KEY (`id_mausac`),
  INDEX `fk_tbl_mausac_tbl_dienthoai1_idx` (`id_dienthoai` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausac_tbl_dienthoai1`
    FOREIGN KEY (`id_dienthoai`)
    REFERENCES `CellphoneS`.`tbl_dienthoai` (`id_dienthoai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phukien`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phukien` (
  `id_phukien` INT NOT NULL AUTO_INCREMENT,
  `tenphukien` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_phukien`),
  INDEX `fk_tbl_phukien_tbl_sanpham1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phukien_tbl_sanpham1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phukienapple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phukienapple` (
  `id_phukienapple` INT NOT NULL AUTO_INCREMENT,
  `tenphukien` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `id_phukien` INT NOT NULL,
  PRIMARY KEY (`id_phukienapple`),
  INDEX `fk_phukienapple_tbl_phukien1_idx` (`id_phukien` ASC) VISIBLE,
  CONSTRAINT `fk_phukienapple_tbl_phukien1`
    FOREIGN KEY (`id_phukien`)
    REFERENCES `CellphoneS`.`tbl_phukien` (`id_phukien`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaioplung`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaioplung` (
  `id_loaioplung` INT NOT NULL AUTO_INCREMENT,
  `tenopluong` VARCHAR(225) NULL,
  `id_phukienapple` INT NOT NULL,
  PRIMARY KEY (`id_loaioplung`),
  INDEX `fk_tbl_loaioplung_phukienapple1_idx` (`id_phukienapple` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaioplung_phukienapple1`
    FOREIGN KEY (`id_phukienapple`)
    REFERENCES `CellphoneS`.`tbl_phukienapple` (`id_phukienapple`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_oplung`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_oplung` (
  `id_oplung` INT NOT NULL AUTO_INCREMENT,
  `tenoplung` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `dongsanpham` VARCHAR(225) NULL,
  `tinhnang` VARCHAR(225) NULL,
  `chitiet` TINYTEXT NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `id_loaioplung` INT NOT NULL,
  PRIMARY KEY (`id_oplung`),
  INDEX `fk_tbl_oplung_tbl_loaioplung1_idx` (`id_loaioplung` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_oplung_tbl_loaioplung1`
    FOREIGN KEY (`id_loaioplung`)
    REFERENCES `CellphoneS`.`tbl_loaioplung` (`id_loaioplung`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaitaynghe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaitaynghe` (
  `id_loaitaynghe` INT NOT NULL AUTO_INCREMENT,
  `tenloaitaynghe` VARCHAR(225) NULL,
  `id_danhmucamthanh` INT NOT NULL,
  PRIMARY KEY (`id_loaitaynghe`),
  INDEX `fk_tbl_loaitaynghe_tbl_danhmucamthanh1_idx` (`id_danhmucamthanh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaitaynghe_tbl_danhmucamthanh1`
    FOREIGN KEY (`id_danhmucamthanh`)
    REFERENCES `CellphoneS`.`tbl_danhmucamthanh` (`id_danhmucamthanh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));


-- -----------------------------------------------------
-- Table `CellphoneS`.`category_1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`category_1` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));


-- -----------------------------------------------------
-- Table `CellphoneS`.`timestamps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`timestamps` (
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` TIMESTAMP NULL);


-- -----------------------------------------------------
-- Table `CellphoneS`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_taynghe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_taynghe` (
  `id_taynghe` INT NOT NULL AUTO_INCREMENT,
  `tentaynghe` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `tienich` VARCHAR(225) NULL,
  `tinhnagnkhac` VARCHAR(225) NULL,
  `thoigianpin` VARCHAR(225) NULL,
  `thoigiansac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `chongnuoc` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `micro` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `dotre` VARCHAR(225) NULL,
  `phuongthichdieukhien` VARCHAR(225) NULL,
  `thaotacdieukhien` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `chitiet` TINYTEXT NULL,
  `id_loaitaynghe` INT NOT NULL,
  PRIMARY KEY (`id_taynghe`),
  INDEX `fk_tbl_taynghe_tbl_loaitaynghe1_idx` (`id_loaitaynghe` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_taynghe_tbl_loaitaynghe1`
    FOREIGN KEY (`id_loaitaynghe`)
    REFERENCES `CellphoneS`.`tbl_loaitaynghe` (`id_loaitaynghe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_capsac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_capsac` (
  `id_capsac` INT NOT NULL AUTO_INCREMENT,
  `tencapsac` VARCHAR(225) NULL,
  `id_phukienapple` INT NOT NULL,
  PRIMARY KEY (`id_capsac`),
  INDEX `fk_tbl_capsac_phukienapple1_idx` (`id_phukienapple` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_capsac_phukienapple1`
    FOREIGN KEY (`id_phukienapple`)
    REFERENCES `CellphoneS`.`tbl_phukienapple` (`id_phukienapple`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_cap`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_cap` (
  `id_cap` INT NOT NULL AUTO_INCREMENT,
  `tencap` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `loaicapsac` VARCHAR(225) NULL,
  `chieudaiday` VARCHAR(225) NULL,
  `congsuatsac` VARCHAR(225) NULL,
  `tinhnang` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `id_capsac` INT NOT NULL,
  PRIMARY KEY (`id_cap`),
  INDEX `fk_tbl_cap_tbl_capsac1_idx` (`id_capsac` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_cap_tbl_capsac1`
    FOREIGN KEY (`id_capsac`)
    REFERENCES `CellphoneS`.`tbl_capsac` (`id_capsac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_sac`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_sac` (
  `id_sac` INT NOT NULL AUTO_INCREMENT,
  `tencapsac` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `congsacra` VARCHAR(225) NULL,
  `sactoida` VARCHAR(225) NULL,
  `congsuatxac` VARCHAR(225) NULL,
  `tinhnang` VARCHAR(225) NULL,
  `conggiaotiep` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `id_capsac` INT NOT NULL,
  PRIMARY KEY (`id_sac`),
  INDEX `fk_tbl_sac_tbl_capsac1_idx` (`id_capsac` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_sac_tbl_capsac1`
    FOREIGN KEY (`id_capsac`)
    REFERENCES `CellphoneS`.`tbl_capsac` (`id_capsac`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_linhkienmaytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_linhkienmaytinh` (
  `id_linhkienmaytinh` INT NOT NULL AUTO_INCREMENT,
  `tenlinhkien` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `mausac` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_linhkienmaytinh`),
  INDEX `fk_tbl_linhkienmaytinh_tbl_sanpham1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_linhkienmaytinh_tbl_sanpham1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_uudaithanhtoan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_uudaithanhtoan` (
  `id_uudai` INT NOT NULL AUTO_INCREMENT,
  `hinhanh` VARCHAR(225) NULL,
  `tenuudai` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_uudai`),
  INDEX `fk_tbl_uudaithanhtoan_tbl_sanpham1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_uudaithanhtoan_tbl_sanpham1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thuonghieu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thuonghieu` (
  `id_thuonghieu` INT NOT NULL AUTO_INCREMENT,
  `tenhuonghieu` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_thuonghieu`),
  INDEX `fk_tbl_thuonghieu_tbl_sanpham1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thuonghieu_tbl_sanpham1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsokythuat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsokythuat` (
  `id_thongsokythuat` INT NOT NULL AUTO_INCREMENT,
  `kichthuocmanhinh` VARCHAR(225) NULL,
  `congnghemanhinh` VARCHAR(225) NULL,
  `tinhnagmanghinh` VARCHAR(225) NULL,
  `tansoquet` VARCHAR(225) NULL,
  `camerasau` VARCHAR(225) NULL,
  `quayvideo` VARCHAR(225) NULL,
  `tinhnagcamera` VARCHAR(225) NULL,
  `cameratruoc` VARCHAR(225) NULL,
  `quayvideotruoc` VARCHAR(225) NULL,
  `chipset` VARCHAR(225) NULL,
  `gpu` VARCHAR(225) NULL,
  `dungluongram` VARCHAR(225) NULL,
  `bonhotrong` VARCHAR(225) NULL,
  `khecamthenho` VARCHAR(225) NULL,
  `pin` VARCHAR(225) NULL,
  `congnghesac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `thesim` VARCHAR(225) NULL,
  `hedieuhang` VARCHAR(225) NULL,
  `hongngoai` VARCHAR(225) NULL,
  `jacktainghe3.5` VARCHAR(225) NULL,
  `congghenfc` VARCHAR(225) NULL,
  `hotromang` VARCHAR(225) NULL,
  `wifi` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(225) NULL,
  `gps` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `chatlieumatlung` VARCHAR(225) NULL,
  `chatlieukhungvien` VARCHAR(225) NULL,
  `chisokhangnuoc-bui` VARCHAR(225) NULL,
  `kieumanhinh` VARCHAR(225) NULL,
  `cambienvantai` VARCHAR(225) NULL,
  `cacloaicambien` VARCHAR(225) NULL,
  `tinhnangdacbiet` VARCHAR(225) NULL,
  `id_dienthoai` INT NOT NULL,
  `dacdiennoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  PRIMARY KEY (`id_thongsokythuat`),
  INDEX `fk_tbl_thongsokythuat_tbl_dienthoai1_idx` (`id_dienthoai` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsokythuat_tbl_dienthoai1`
    FOREIGN KEY (`id_dienthoai`)
    REFERENCES `CellphoneS`.`tbl_dienthoai` (`id_dienthoai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmuclaptop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmuclaptop` (
  `id_danhmuclaptop` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmuclaptop`),
  INDEX `fk_tbl_danhmuclaptop_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmuclaptop_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaimaytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaimaytinh` (
  `id_loaimaytinh` INT NOT NULL AUTO_INCREMENT,
  `tenloaimaytinh` VARCHAR(225) NULL,
  `id_danhmuclaptop` INT NOT NULL,
  PRIMARY KEY (`id_loaimaytinh`),
  INDEX `fk_tbl_loaimaytinh_tbl_danhmuclaptop1_idx` (`id_danhmuclaptop` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaimaytinh_tbl_danhmuclaptop1`
    FOREIGN KEY (`id_danhmuclaptop`)
    REFERENCES `CellphoneS`.`tbl_danhmuclaptop` (`id_danhmuclaptop`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phanloaimaytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phanloaimaytinh` (
  `id_phanloaimaytinh` INT NOT NULL AUTO_INCREMENT,
  `tenphanloai` VARCHAR(225) NULL,
  `id_loaimaytinh` INT NOT NULL,
  PRIMARY KEY (`id_phanloaimaytinh`),
  INDEX `fk_tbl_phanloaimaytinh_tbl_loaimaytinh1_idx` (`id_loaimaytinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phanloaimaytinh_tbl_loaimaytinh1`
    FOREIGN KEY (`id_loaimaytinh`)
    REFERENCES `CellphoneS`.`tbl_loaimaytinh` (`id_loaimaytinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_maytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_maytinh` (
  `id_maytinh` INT NOT NULL AUTO_INCREMENT,
  `tenmaytinh` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `ram` VARCHAR(225) NULL,
  `bonho` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_phanloaimaytinh` INT NOT NULL,
  `id_noibat` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  PRIMARY KEY (`id_maytinh`),
  INDEX `fk_tbl_maytinh_tbl_phanloaimaytinh1_idx` (`id_phanloaimaytinh` ASC) VISIBLE,
  INDEX `fk_tbl_maytinh_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_maytinh_tbl_phanloaimaytinh1`
    FOREIGN KEY (`id_phanloaimaytinh`)
    REFERENCES `CellphoneS`.`tbl_phanloaimaytinh` (`id_phanloaimaytinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_maytinh_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausacmaytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausacmaytinh` (
  `id_mausacmaytinh` INT NOT NULL,
  `tenmausac` VARCHAR(225) NULL,
  `id_maytinh` INT NOT NULL,
  `gia` VARCHAR(225) NULL,
  PRIMARY KEY (`id_mausacmaytinh`),
  INDEX `fk_tbl_mausacmaytinh_tbl_maytinh1_idx` (`id_maytinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausacmaytinh_tbl_maytinh1`
    FOREIGN KEY (`id_maytinh`)
    REFERENCES `CellphoneS`.`tbl_maytinh` (`id_maytinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsomaytinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsomaytinh` (
  `id_thongsomaytinh` INT NOT NULL AUTO_INCREMENT,
  `loaicarddohoa` VARCHAR(225) NULL,
  `loaicpu` VARCHAR(225) NULL,
  `dungluongram` VARCHAR(225) NULL,
  `loairam` VARCHAR(225) NULL,
  `ocung` VARCHAR(225) NULL,
  `manhinhcamung` VARCHAR(225) NULL,
  `chatlieutamnen` VARCHAR(225) NULL,
  `dophangia` VARCHAR(225) NULL,
  `kichthuocmanghinh` VARCHAR(225) NULL,
  `congnghemanhinh` VARCHAR(225) NULL,
  `dophangiai` VARCHAR(225) NULL,
  `webcam` VARCHAR(225) NULL,
  `khedocnho` VARCHAR(225) NULL,
  `hedieuhanh` VARCHAR(225) NULL,
  `wifi` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(225) NULL,
  `tinhnangdacbiet` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `pin` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `conggioatiep` VARCHAR(225) NULL,
  `chitiet` TINYTEXT NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `id_maytinh` INT NOT NULL,
  PRIMARY KEY (`id_thongsomaytinh`),
  INDEX `fk_tbl_thongsomaytinh_tbl_maytinh1_idx` (`id_maytinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsomaytinh_tbl_maytinh1`
    FOREIGN KEY (`id_maytinh`)
    REFERENCES `CellphoneS`.`tbl_maytinh` (`id_maytinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmucmanhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmucmanhinh` (
  `id_manhinh` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_manhinh`),
  INDEX `fk_tbl_danhmucmanhinh_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmucmanhinh_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaimanhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaimanhinh` (
  `id_loaimanhinh` INT NOT NULL AUTO_INCREMENT,
  `tenloaimanhinh` VARCHAR(225) NULL,
  `id_manhinh` INT NOT NULL,
  PRIMARY KEY (`id_loaimanhinh`),
  INDEX `fk_tbl_loaimanhinh_tbl_danhmucmanhinh1_idx` (`id_manhinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaimanhinh_tbl_danhmucmanhinh1`
    FOREIGN KEY (`id_manhinh`)
    REFERENCES `CellphoneS`.`tbl_danhmucmanhinh` (`id_manhinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phanloaimanhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phanloaimanhinh` (
  `id_phanloaimanhinh` INT NOT NULL AUTO_INCREMENT,
  `tenphanloai` VARCHAR(225) NULL,
  `id_loaimanhinh` INT NOT NULL,
  PRIMARY KEY (`id_phanloaimanhinh`),
  INDEX `fk_tbl_phanloaimanhinh_tbl_loaimanhinh1_idx` (`id_loaimanhinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phanloaimanhinh_tbl_loaimanhinh1`
    FOREIGN KEY (`id_loaimanhinh`)
    REFERENCES `CellphoneS`.`tbl_loaimanhinh` (`id_loaimanhinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_manhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_manhinh` (
  `id_manhinh` INT NOT NULL AUTO_INCREMENT,
  `tenmanghinh` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `inch` VARCHAR(225) NULL,
  `phangiai` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_phanloaimanhinh` INT NOT NULL,
  `id_noibat` INT NOT NULL,
  PRIMARY KEY (`id_manhinh`),
  INDEX `fk_tbl_manhinh_tbl_phanloaimanhinh1_idx` (`id_phanloaimanhinh` ASC) VISIBLE,
  INDEX `fk_tbl_manhinh_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_manhinh_tbl_phanloaimanhinh1`
    FOREIGN KEY (`id_phanloaimanhinh`)
    REFERENCES `CellphoneS`.`tbl_phanloaimanhinh` (`id_phanloaimanhinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_manhinh_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsokythuatmanhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsokythuatmanhinh` (
  `id_thongsokythuat` INT NOT NULL AUTO_INCREMENT,
  `tansoquet` VARCHAR(225) NULL,
  `thoigianphanhoi` VARCHAR(225) NULL,
  `tilemanhinh` VARCHAR(225) NULL,
  `dosang` VARCHAR(225) NULL,
  `gocnhin` VARCHAR(225) NULL,
  `dophumau` VARCHAR(225) NULL,
  `soluongmau` VARCHAR(225) NULL,
  `tamnen` VARCHAR(225) NULL,
  `khichthuocmanhinh` VARCHAR(225) NULL,
  `dophangiaiman` VARCHAR(225) NULL,
  `kieumanhinh` VARCHAR(225) NULL,
  `dotuongphantinh` VARCHAR(225) NULL,
  `hethongamthanh` VARCHAR(225) NULL,
  `tientich` VARCHAR(225) NULL,
  `congxuattieuthu` VARCHAR(225) NULL,
  `congnghemanhinh` VARCHAR(225) NULL,
  `congketnoi` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `manhinhcamung` VARCHAR(225) NULL,
  `armchuanvesa` VARCHAR(225) NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  `id_manhinh` INT NOT NULL,
  PRIMARY KEY (`id_thongsokythuat`),
  INDEX `fk_tbl_thongsokythuat_tbl_manhinh1_idx` (`id_manhinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsokythuat_tbl_manhinh1`
    FOREIGN KEY (`id_manhinh`)
    REFERENCES `CellphoneS`.`tbl_manhinh` (`id_manhinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmucmaytinbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmucmaytinbang` (
  `id_danhmucmaytinbang` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmucmaytinbang`),
  INDEX `fk_tbl_danhmucmaytinbang_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmucmaytinbang_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaimaytinhbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaimaytinhbang` (
  `id_loaimaytinhbang` INT NOT NULL AUTO_INCREMENT,
  `tenloaImaytinhbang` VARCHAR(225) NULL,
  `id_danhmucmaytinbang` INT NOT NULL,
  PRIMARY KEY (`id_loaimaytinhbang`),
  INDEX `fk_tbl_loaimaytinhbang_tbl_danhmucmaytinbang1_idx` (`id_danhmucmaytinbang` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaimaytinhbang_tbl_danhmucmaytinbang1`
    FOREIGN KEY (`id_danhmucmaytinbang`)
    REFERENCES `CellphoneS`.`tbl_danhmucmaytinbang` (`id_danhmucmaytinbang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phanloaimaytinhban`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phanloaimaytinhban` (
  `id_phanloaimaytinhban` INT NOT NULL AUTO_INCREMENT,
  `tenphanloai` VARCHAR(225) NULL,
  `id_loaimaytinhbang` INT NOT NULL,
  PRIMARY KEY (`id_phanloaimaytinhban`),
  INDEX `fk_tbl_phanloaimaytinhban_tbl_loaimaytinhbang1_idx` (`id_loaimaytinhbang` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phanloaimaytinhban_tbl_loaimaytinhbang1`
    FOREIGN KEY (`id_loaimaytinhbang`)
    REFERENCES `CellphoneS`.`tbl_loaimaytinhbang` (`id_loaimaytinhbang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_maytinhbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_maytinhbang` (
  `id_maytinhbang` INT NOT NULL AUTO_INCREMENT,
  `tenmaytinhbang` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `bonho` VARCHAR(225) NULL,
  `hesudung` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_phanloaimaytinhban` INT NOT NULL,
  `id_noibat` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  PRIMARY KEY (`id_maytinhbang`),
  INDEX `fk_tbl_maytinhbang_tbl_phanloaimaytinhban1_idx` (`id_phanloaimaytinhban` ASC) VISIBLE,
  INDEX `fk_tbl_maytinhbang_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_maytinhbang_tbl_phanloaimaytinhban1`
    FOREIGN KEY (`id_phanloaimaytinhban`)
    REFERENCES `CellphoneS`.`tbl_phanloaimaytinhban` (`id_phanloaimaytinhban`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_maytinhbang_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausacmaytinhbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausacmaytinhbang` (
  `id_mausacmaytinhbang` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_maytinhbang` INT NOT NULL,
  PRIMARY KEY (`id_mausacmaytinhbang`),
  INDEX `fk_tbl_mausacmaytinhbang_tbl_maytinhbang1_idx` (`id_maytinhbang` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausacmaytinhbang_tbl_maytinhbang1`
    FOREIGN KEY (`id_maytinhbang`)
    REFERENCES `CellphoneS`.`tbl_maytinhbang` (`id_maytinhbang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtindienthoai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtindienthoai` (
  `id_thongtindienthoai` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `tbl_dienthoai_id_dienthoai` INT NOT NULL,
  PRIMARY KEY (`id_thongtindienthoai`),
  INDEX `fk_tbl_thongtindienthoai_tbl_dienthoai1_idx` (`tbl_dienthoai_id_dienthoai` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtindienthoai_tbl_dienthoai1`
    FOREIGN KEY (`tbl_dienthoai_id_dienthoai`)
    REFERENCES `CellphoneS`.`tbl_dienthoai` (`id_dienthoai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtinlaptop`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtinlaptop` (
  `id_thongtinlaptop` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` VARCHAR(225) NULL,
  `id_maytinh` INT NOT NULL,
  PRIMARY KEY (`id_thongtinlaptop`),
  INDEX `fk_tbl_thongtinlaptop_tbl_maytinh1_idx` (`id_maytinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtinlaptop_tbl_maytinh1`
    FOREIGN KEY (`id_maytinh`)
    REFERENCES `CellphoneS`.`tbl_maytinh` (`id_maytinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtinmanhinh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtinmanhinh` (
  `id_thongtinmanhinh` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `id_manhinh` INT NOT NULL,
  PRIMARY KEY (`id_thongtinmanhinh`),
  INDEX `fk_tbl_thongtinmanhinh_tbl_manhinh1_idx` (`id_manhinh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtinmanhinh_tbl_manhinh1`
    FOREIGN KEY (`id_manhinh`)
    REFERENCES `CellphoneS`.`tbl_manhinh` (`id_manhinh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtinmaytinhbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtinmaytinhbang` (
  `id_thongtinmaytinhbang` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `id_maytinhbang` INT NOT NULL,
  PRIMARY KEY (`id_thongtinmaytinhbang`),
  INDEX `fk_tbl_thongtinmaytinhbang_tbl_maytinhbang1_idx` (`id_maytinhbang` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtinmaytinhbang_tbl_maytinhbang1`
    FOREIGN KEY (`id_maytinhbang`)
    REFERENCES `CellphoneS`.`tbl_maytinhbang` (`id_maytinhbang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsokythuatmaytinhbang`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsokythuatmaytinhbang` (
  `id_thongsokythuatmaytinhbang` INT NOT NULL AUTO_INCREMENT,
  `kichthuocmanhinh` VARCHAR(225) NULL,
  `congnghemanhinh` VARCHAR(225) NULL,
  `dophangiai` VARCHAR(225) NULL,
  `tinhnangmanhinh` VARCHAR(225) NULL,
  `camerasau` VARCHAR(225) NULL,
  `quayvideo` VARCHAR(225) NULL,
  `cameratruoc` VARCHAR(225) NULL,
  `quayvideotruoc` VARCHAR(225) NULL,
  `chipset` VARCHAR(225) NULL,
  `loaicpu` VARCHAR(225) NULL,
  `cpu` VARCHAR(225) NULL,
  `dungluongram` VARCHAR(225) NULL,
  `bonhotrong` VARCHAR(225) NULL,
  `pin` VARCHAR(225) NULL,
  `congnghesac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `hedieuhanh` VARCHAR(225) NULL,
  `jacktainghe` VARCHAR(225) NULL,
  `congnghenfc` VARCHAR(225) NULL,
  `hotromang` VARCHAR(225) NULL,
  `wifi` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(225) NULL,
  `gps` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `chatlieumatlung` VARCHAR(225) NULL,
  `chatlieukhung` VARCHAR(225) NULL,
  `cambienvantay` VARCHAR(225) NULL,
  `cacloaicambien` VARCHAR(225) NULL,
  `chitiet` TINYTEXT NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `id_maytinhbang` INT NOT NULL,
  `thesim` VARCHAR(225) NULL,
  PRIMARY KEY (`id_thongsokythuatmaytinhbang`),
  INDEX `fk_tbl_thongsokythuatmaytinhbang_tbl_maytinhbang1_idx` (`id_maytinhbang` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsokythuatmaytinhbang_tbl_maytinhbang1`
    FOREIGN KEY (`id_maytinhbang`)
    REFERENCES `CellphoneS`.`tbl_maytinhbang` (`id_maytinhbang`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmucamthanh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmucamthanh` (
  `id_danhmucamthanh` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmucamthanh`),
  INDEX `fk_tbl_danhmucamthanh_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmucamthanh_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_damhmuctainghecoday`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_damhmuctainghecoday` (
  `id_damhmuctainghecoday` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_danhmucamthanh` INT NOT NULL,
  PRIMARY KEY (`id_damhmuctainghecoday`),
  INDEX `fk_tbl_damhmuctainghecoday_tbl_danhmucamthanh1_idx` (`id_danhmucamthanh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_damhmuctainghecoday_tbl_danhmucamthanh1`
    FOREIGN KEY (`id_danhmucamthanh`)
    REFERENCES `CellphoneS`.`tbl_danhmucamthanh` (`id_danhmucamthanh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaitaynghe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaitaynghe` (
  `id_loaitaynghe` INT NOT NULL AUTO_INCREMENT,
  `tenloaitaynghe` VARCHAR(225) NULL,
  `id_danhmucamthanh` INT NOT NULL,
  PRIMARY KEY (`id_loaitaynghe`),
  INDEX `fk_tbl_loaitaynghe_tbl_danhmucamthanh1_idx` (`id_danhmucamthanh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaitaynghe_tbl_danhmucamthanh1`
    FOREIGN KEY (`id_danhmucamthanh`)
    REFERENCES `CellphoneS`.`tbl_danhmucamthanh` (`id_danhmucamthanh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_tainghecoday`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_tainghecoday` (
  `id_tainghecoday` INT NOT NULL AUTO_INCREMENT,
  `tentaynghe` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_noibat` INT NOT NULL,
  `id_loaitaynghe` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  PRIMARY KEY (`id_tainghecoday`),
  INDEX `fk_tbl_tainghecoday_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  INDEX `fk_tbl_tainghecoday_tbl_loaitaynghe1_idx` (`id_loaitaynghe` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tainghecoday_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_tainghecoday_tbl_loaitaynghe1`
    FOREIGN KEY (`id_loaitaynghe`)
    REFERENCES `CellphoneS`.`tbl_loaitaynghe` (`id_loaitaynghe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausactaynghecoday`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausactaynghecoday` (
  `id_mausactaynghecoday` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_tainghecoday` INT NOT NULL,
  PRIMARY KEY (`id_mausactaynghecoday`),
  INDEX `fk_tbl_mausactaynghecoday_tbl_tainghecoday1_idx` (`id_tainghecoday` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausactaynghecoday_tbl_tainghecoday1`
    FOREIGN KEY (`id_tainghecoday`)
    REFERENCES `CellphoneS`.`tbl_tainghecoday` (`id_tainghecoday`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtintaynghecoday`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtintaynghecoday` (
  `id_thongtintaynghecoday` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` VARCHAR(225) NULL,
  `id_tainghecoday` INT NOT NULL,
  PRIMARY KEY (`id_thongtintaynghecoday`),
  INDEX `fk_tbl_thongtintaynghecoday_tbl_tainghecoday1_idx` (`id_tainghecoday` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtintaynghecoday_tbl_tainghecoday1`
    FOREIGN KEY (`id_tainghecoday`)
    REFERENCES `CellphoneS`.`tbl_tainghecoday` (`id_tainghecoday`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsotaynghecoday`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsotaynghecoday` (
  `id_thongsotaynghecoday` INT NOT NULL AUTO_INCREMENT,
  `tienich` VARCHAR(225) NULL,
  `congketnoi` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `micro` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `kichthuocdriver` VARCHAR(225) NULL,
  `phuongthucdieukien` VARCHAR(225) NULL,
  `thaotacdieukien` VARCHAR(225) NULL,
  `dodaiday` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `id_tainghecoday` INT NOT NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  PRIMARY KEY (`id_thongsotaynghecoday`),
  INDEX `fk_tbl_thongsotaynghecoday_tbl_tainghecoday1_idx` (`id_tainghecoday` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsotaynghecoday_tbl_tainghecoday1`
    FOREIGN KEY (`id_tainghecoday`)
    REFERENCES `CellphoneS`.`tbl_tainghecoday` (`id_tainghecoday`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmuctaynghechuptai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmuctaynghechuptai` (
  `id_danhmuctaynghechuptai` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_danhmucamthanh` INT NOT NULL,
  PRIMARY KEY (`id_danhmuctaynghechuptai`),
  INDEX `fk_tbl_danhmuctaynghechuptai_tbl_danhmucamthanh1_idx` (`id_danhmucamthanh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmuctaynghechuptai_tbl_danhmucamthanh1`
    FOREIGN KEY (`id_danhmucamthanh`)
    REFERENCES `CellphoneS`.`tbl_danhmucamthanh` (`id_danhmucamthanh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaitainghechuptai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaitainghechuptai` (
  `id_loaitainghechuptai` INT NOT NULL,
  `tenloaitainghechuptai` VARCHAR(45) NULL,
  `id_loaitaynghe` INT NOT NULL,
  PRIMARY KEY (`id_loaitainghechuptai`),
  INDEX `fk_tbl_loaitainghechuptai_tbl_loaitaynghe1_idx` (`id_loaitaynghe` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaitainghechuptai_tbl_loaitaynghe1`
    FOREIGN KEY (`id_loaitaynghe`)
    REFERENCES `CellphoneS`.`tbl_loaitaynghe` (`id_loaitaynghe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phanloaitainghechup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phanloaitainghechup` (
  `id_phanloaitainghechup` INT NOT NULL AUTO_INCREMENT,
  `tenphanloai` VARCHAR(225) NULL,
  `id_loaitainghechuptai` INT NOT NULL,
  PRIMARY KEY (`id_phanloaitainghechup`),
  INDEX `fk_tbl_phanloaitainghechup_tbl_loaitainghechuptai1_idx` (`id_loaitainghechuptai` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phanloaitainghechup_tbl_loaitainghechuptai1`
    FOREIGN KEY (`id_loaitainghechuptai`)
    REFERENCES `CellphoneS`.`tbl_loaitainghechuptai` (`id_loaitainghechuptai`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_tainghechupdau`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_tainghechupdau` (
  `id_tainghechupdau` INT NOT NULL AUTO_INCREMENT,
  `tentainghe` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `tengon` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_phanloaitainghechup` INT NOT NULL,
  `id_noibat` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  PRIMARY KEY (`id_tainghechupdau`),
  INDEX `fk_tbl_tainghechupdau_tbl_phanloaitainghechup1_idx` (`id_phanloaitainghechup` ASC) VISIBLE,
  INDEX `fk_tbl_tainghechupdau_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tainghechupdau_tbl_phanloaitainghechup1`
    FOREIGN KEY (`id_phanloaitainghechup`)
    REFERENCES `CellphoneS`.`tbl_phanloaitainghechup` (`id_phanloaitainghechup`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_tainghechupdau_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausactainghechup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausactainghechup` (
  `id_mausactainghechup` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_tainghechupdau` INT NOT NULL,
  PRIMARY KEY (`id_mausactainghechup`),
  INDEX `fk_tbl_mausactainghechup_tbl_tainghechupdau1_idx` (`id_tainghechupdau` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausactainghechup_tbl_tainghechupdau1`
    FOREIGN KEY (`id_tainghechupdau`)
    REFERENCES `CellphoneS`.`tbl_tainghechupdau` (`id_tainghechupdau`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtintainghechup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtintainghechup` (
  `id_thongtintainghechup` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `id_tainghechupdau` INT NOT NULL,
  PRIMARY KEY (`id_thongtintainghechup`),
  INDEX `fk_tbl_thongtintainghechup_tbl_tainghechupdau1_idx` (`id_tainghechupdau` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtintainghechup_tbl_tainghechupdau1`
    FOREIGN KEY (`id_tainghechupdau`)
    REFERENCES `CellphoneS`.`tbl_tainghechupdau` (`id_tainghechupdau`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsotainghechup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsotainghechup` (
  `id_thongsotainghechup` INT NOT NULL AUTO_INCREMENT,
  `tienich` VARCHAR(225) NULL,
  `tinhnangkhac` VARCHAR(225) NULL,
  `thoiluongpin` VARCHAR(225) NULL,
  `thoigiansac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `micro` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `kichthuocdriver` VARCHAR(225) NULL,
  `sothietbiketnoicungluc` VARCHAR(225) NULL,
  `ungdungketnoi` VARCHAR(225) NULL,
  `phuongthucdieukien` VARCHAR(225) NULL,
  `thaotacdieukien` VARCHAR(225) NULL,
  `bluetoob` VARCHAR(225) NULL,
  `phamviketnoi` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `id_tainghechupdau` INT NOT NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  PRIMARY KEY (`id_thongsotainghechup`, `id_tainghechupdau`),
  INDEX `fk_tbl_thongsotainghechup_tbl_tainghechupdau1_idx` (`id_tainghechupdau` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsotainghechup_tbl_tainghechupdau1`
    FOREIGN KEY (`id_tainghechupdau`)
    REFERENCES `CellphoneS`.`tbl_tainghechupdau` (`id_tainghechupdau`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaitainghebluetooth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaitainghebluetooth` (
  `id_loaitainghebluetooth` INT NOT NULL AUTO_INCREMENT,
  `tenloaitainghebluetooth` VARCHAR(225) NULL,
  `id_loaitaynghe` INT NOT NULL,
  PRIMARY KEY (`id_loaitainghebluetooth`),
  INDEX `fk_tbl_loaitainghebluetooth_tbl_loaitaynghe1_idx` (`id_loaitaynghe` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaitainghebluetooth_tbl_loaitaynghe1`
    FOREIGN KEY (`id_loaitaynghe`)
    REFERENCES `CellphoneS`.`tbl_loaitaynghe` (`id_loaitaynghe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_tainghebluetooth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_tainghebluetooth` (
  `id_tainghebluetooth` INT NOT NULL AUTO_INCREMENT,
  `tentainghe` VARCHAR(225) NULL,
  `tenngan` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `mausac` VARCHAR(225) NULL,
  `id_loaitainghebluetooth` INT NOT NULL,
  PRIMARY KEY (`id_tainghebluetooth`),
  INDEX `fk_tbl_tainghebluetooth_tbl_loaitainghebluetooth1_idx` (`id_loaitainghebluetooth` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tainghebluetooth_tbl_loaitainghebluetooth1`
    FOREIGN KEY (`id_loaitainghebluetooth`)
    REFERENCES `CellphoneS`.`tbl_loaitainghebluetooth` (`id_loaitainghebluetooth`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausactainghebluetooth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausactainghebluetooth` (
  `id_mausactainghebluetooth` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_tainghebluetooth` INT NOT NULL,
  PRIMARY KEY (`id_mausactainghebluetooth`),
  INDEX `fk_tbl_mausactainghebluetooth_tbl_tainghebluetooth1_idx` (`id_tainghebluetooth` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausactainghebluetooth_tbl_tainghebluetooth1`
    FOREIGN KEY (`id_tainghebluetooth`)
    REFERENCES `CellphoneS`.`tbl_tainghebluetooth` (`id_tainghebluetooth`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtintainghebluetooth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtintainghebluetooth` (
  `id_thongtintainghebluetooth` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `id_tainghebluetooth` INT NOT NULL,
  PRIMARY KEY (`id_thongtintainghebluetooth`),
  INDEX `fk_tbl_thongtintainghebluetooth_tbl_tainghebluetooth1_idx` (`id_tainghebluetooth` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtintainghebluetooth_tbl_tainghebluetooth1`
    FOREIGN KEY (`id_tainghebluetooth`)
    REFERENCES `CellphoneS`.`tbl_tainghebluetooth` (`id_tainghebluetooth`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsotainghebluetooth`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsotainghebluetooth` (
  `id_thongsotainghebluetooth` INT NOT NULL AUTO_INCREMENT,
  `tienich` VARCHAR(225) NULL,
  `tienichkhac` VARCHAR(225) NULL,
  `thoiluongpin` VARCHAR(225) NULL,
  `thoigiansac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `chongnuoc` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `micro` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `sothietbiketnoi` VARCHAR(225) NULL,
  `ungdungketnoi` VARCHAR(225) NULL,
  `phuongthuocdieukien` VARCHAR(225) NULL,
  `thaotacdieukien` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `id_tainghebluetooth` INT NOT NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  PRIMARY KEY (`id_thongsotainghebluetooth`),
  INDEX `fk_tbl_thongsotainghebluetooth_tbl_tainghebluetooth1_idx` (`id_tainghebluetooth` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsotainghebluetooth_tbl_tainghebluetooth1`
    FOREIGN KEY (`id_tainghebluetooth`)
    REFERENCES `CellphoneS`.`tbl_tainghebluetooth` (`id_tainghebluetooth`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaitainghegaming`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaitainghegaming` (
  `id_loaitainghegaming` INT NOT NULL AUTO_INCREMENT,
  `tentainghe` VARCHAR(225) NULL,
  `tbl_loaitainghegamingcol` VARCHAR(45) NULL,
  `id_loaitaynghe` INT NOT NULL,
  PRIMARY KEY (`id_loaitainghegaming`),
  INDEX `fk_tbl_loaitainghegaming_tbl_loaitaynghe1_idx` (`id_loaitaynghe` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaitainghegaming_tbl_loaitaynghe1`
    FOREIGN KEY (`id_loaitaynghe`)
    REFERENCES `CellphoneS`.`tbl_loaitaynghe` (`id_loaitaynghe`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_tainghegaming`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_tainghegaming` (
  `id_tainghegaming` INT NOT NULL AUTO_INCREMENT,
  `tentainghe` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `tbl_noibat_id_noibat` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  `id_loaitainghegaming` INT NOT NULL,
  PRIMARY KEY (`id_tainghegaming`),
  INDEX `fk_tbl_tainghegaming_tbl_noibat1_idx` (`tbl_noibat_id_noibat` ASC) VISIBLE,
  INDEX `fk_tbl_tainghegaming_tbl_loaitainghegaming1_idx` (`id_loaitainghegaming` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_tainghegaming_tbl_noibat1`
    FOREIGN KEY (`tbl_noibat_id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_tainghegaming_tbl_loaitainghegaming1`
    FOREIGN KEY (`id_loaitainghegaming`)
    REFERENCES `CellphoneS`.`tbl_loaitainghegaming` (`id_loaitainghegaming`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausactainghegaming`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausactainghegaming` (
  `id_mausactainghegaming` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_tainghegaming` INT NOT NULL,
  PRIMARY KEY (`id_mausactainghegaming`),
  INDEX `fk_tbl_mausactainghegaming_tbl_tainghegaming1_idx` (`id_tainghegaming` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausactainghegaming_tbl_tainghegaming1`
    FOREIGN KEY (`id_tainghegaming`)
    REFERENCES `CellphoneS`.`tbl_tainghegaming` (`id_tainghegaming`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtintainghegaming`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtintainghegaming` (
  `id_thongtintainghegaming` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` TINYTEXT NULL,
  `id_tainghegaming` INT NOT NULL,
  PRIMARY KEY (`id_thongtintainghegaming`),
  INDEX `fk_tbl_thongtintainghegaming_tbl_tainghegaming1_idx` (`id_tainghegaming` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtintainghegaming_tbl_tainghegaming1`
    FOREIGN KEY (`id_tainghegaming`)
    REFERENCES `CellphoneS`.`tbl_tainghegaming` (`id_tainghegaming`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsotainghegaming`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsotainghegaming` (
  `id_thongsotainghegaming` INT NOT NULL AUTO_INCREMENT,
  `congketnoi` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `tinhnangkhac` VARCHAR(225) NULL,
  `kichthuocdriver` VARCHAR(225) NULL,
  `trongluong` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `conggiaotiep` VARCHAR(225) NULL,
  `tinhnangkhhac` VARCHAR(225) NULL,
  `tienich` VARCHAR(225) NULL,
  `thoigianpin` VARCHAR(225) NULL,
  `thoigiansac` VARCHAR(225) NULL,
  `congsac` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `phuongthuocdieukien` VARCHAR(225) NULL,
  `bluetooth` VARCHAR(45) NULL,
  `id_tainghegaming` INT NOT NULL,
  PRIMARY KEY (`id_thongsotainghegaming`),
  INDEX `fk_tbl_thongsotainghegaming_tbl_tainghegaming1_idx` (`id_tainghegaming` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsotainghegaming_tbl_tainghegaming1`
    FOREIGN KEY (`id_tainghegaming`)
    REFERENCES `CellphoneS`.`tbl_tainghegaming` (`id_tainghegaming`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmucdonghothongminh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmucdonghothongminh` (
  `id_danhmuc` INT NOT NULL,
  `tendanhmuc` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmuc`),
  INDEX `fk_tbl_danhmuc_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmuc_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaisanphamdongho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaisanphamdongho` (
  `id_loaisanpham` INT NOT NULL,
  `tenphanloaidongho` VARCHAR(225) NULL,
  `id_danhmuc` INT NOT NULL,
  PRIMARY KEY (`id_loaisanpham`),
  INDEX `fk_tbl_loaisanphamdongho_tbl_danhmuc1_idx` (`id_danhmuc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaisanphamdongho_tbl_danhmuc1`
    FOREIGN KEY (`id_danhmuc`)
    REFERENCES `CellphoneS`.`tbl_danhmucdonghothongminh` (`id_danhmuc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_phanloaisanphamdongho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_phanloaisanphamdongho` (
  `id_phanloaisanphamdongho` INT NOT NULL AUTO_INCREMENT,
  `tenphanloaisanpham` VARCHAR(225) NULL,
  `id_loaisanpham` INT NOT NULL,
  PRIMARY KEY (`id_phanloaisanphamdongho`),
  INDEX `fk_tbl_phanloaisanphamdongho_tbl_loaisanphamdongho1_idx` (`id_loaisanpham` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_phanloaisanphamdongho_tbl_loaisanphamdongho1`
    FOREIGN KEY (`id_loaisanpham`)
    REFERENCES `CellphoneS`.`tbl_loaisanphamdongho` (`id_loaisanpham`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_donghothongminh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_donghothongminh` (
  `id_donghothongminh` INT NOT NULL AUTO_INCREMENT,
  `tendongho` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `dodai` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_phanloaisanphamdongho` INT NOT NULL,
  `mausac` VARCHAR(225) NULL,
  `tengon` VARCHAR(225) NULL,
  `id_noibat` INT NOT NULL,
  PRIMARY KEY (`id_donghothongminh`),
  INDEX `fk_tbl_donghothongminh_tbl_phanloaisanphamdongho1_idx` (`id_phanloaisanphamdongho` ASC) VISIBLE,
  INDEX `fk_tbl_donghothongminh_tbl_noibat1_idx` (`id_noibat` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_donghothongminh_tbl_phanloaisanphamdongho1`
    FOREIGN KEY (`id_phanloaisanphamdongho`)
    REFERENCES `CellphoneS`.`tbl_phanloaisanphamdongho` (`id_phanloaisanphamdongho`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_donghothongminh_tbl_noibat1`
    FOREIGN KEY (`id_noibat`)
    REFERENCES `CellphoneS`.`tbl_noibat` (`id_noibat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_mausacdongho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_mausacdongho` (
  `id_mausacdongho` INT NOT NULL AUTO_INCREMENT,
  `tenmausac` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_donghothongminh` INT NOT NULL,
  PRIMARY KEY (`id_mausacdongho`),
  INDEX `fk_tbl_mausacdongho_tbl_donghothongminh1_idx` (`id_donghothongminh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_mausacdongho_tbl_donghothongminh1`
    FOREIGN KEY (`id_donghothongminh`)
    REFERENCES `CellphoneS`.`tbl_donghothongminh` (`id_donghothongminh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtindonghothongminh`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtindonghothongminh` (
  `id_thongtindonghothongminh` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` VARCHAR(225) NULL,
  `id_donghothongminh` INT NOT NULL,
  PRIMARY KEY (`id_thongtindonghothongminh`),
  INDEX `fk_tbl_thongtindonghothongminh_tbl_donghothongminh1_idx` (`id_donghothongminh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtindonghothongminh_tbl_donghothongminh1`
    FOREIGN KEY (`id_donghothongminh`)
    REFERENCES `CellphoneS`.`tbl_donghothongminh` (`id_donghothongminh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsokythuatdongho`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsokythuatdongho` (
  `id_thongsokythuatdongho` INT NOT NULL AUTO_INCREMENT,
  `congnghemanhinh` VARCHAR(225) NULL,
  `duongkinhmat` VARCHAR(225) NULL,
  `dophangiai` VARCHAR(225) NULL,
  `kichthuocmanhinh` VARCHAR(225) NULL,
  `chatlieumat` VARCHAR(225) NULL,
  `chongnuoc` VARCHAR(225) NULL,
  `tuongthich` VARCHAR(225) NULL,
  `ungdungketnoi` VARCHAR(225) NULL,
  `thongbao` VARCHAR(225) NULL,
  `tienichsuckhoe` VARCHAR(225) NULL,
  `hangsanxuat` VARCHAR(225) NULL,
  `thoiluongpin` VARCHAR(225) NULL,
  `thoigiansac` VARCHAR(225) NULL,
  `chatlieuvien` VARCHAR(225) NULL,
  `chatlieuday` VARCHAR(225) NULL,
  `dodaiday` VARCHAR(225) NULL,
  `bedongday` VARCHAR(225) NULL,
  `cothethayday` VARCHAR(225) NULL,
  `hedieuhanh` VARCHAR(225) NULL,
  `tinhnangthongminh` VARCHAR(225) NULL,
  `tinhnang` VARCHAR(225) NULL,
  `dacdiemnoibat` TINYTEXT NULL,
  `chitiet` TINYTEXT NULL,
  `id_donghothongminh` INT NOT NULL,
  PRIMARY KEY (`id_thongsokythuatdongho`),
  INDEX `fk_tbl_thongsokythuatdongho_tbl_donghothongminh1_idx` (`id_donghothongminh` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsokythuatdongho_tbl_donghothongminh1`
    FOREIGN KEY (`id_donghothongminh`)
    REFERENCES `CellphoneS`.`tbl_donghothongminh` (`id_donghothongminh`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_danhmuctivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_danhmuctivi` (
  `id_danhmuctivi` INT NOT NULL AUTO_INCREMENT,
  `tendanhmuctivi` VARCHAR(225) NULL,
  `id_mucluc` INT NOT NULL,
  PRIMARY KEY (`id_danhmuctivi`),
  INDEX `fk_tbl_danhmuctivi_tbl_mucluc1_idx` (`id_mucluc` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_danhmuctivi_tbl_mucluc1`
    FOREIGN KEY (`id_mucluc`)
    REFERENCES `CellphoneS`.`tbl_mucluc` (`id_mucluc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_loaisanphamtivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_loaisanphamtivi` (
  `id_loaisanphamtivi` INT NOT NULL AUTO_INCREMENT,
  `tenloaisanpham` VARCHAR(225) NULL,
  `id_danhmuctivi` INT NOT NULL,
  PRIMARY KEY (`id_loaisanphamtivi`),
  INDEX `fk_tbl_loaisanphamtivi_tbl_danhmuctivi1_idx` (`id_danhmuctivi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_loaisanphamtivi_tbl_danhmuctivi1`
    FOREIGN KEY (`id_danhmuctivi`)
    REFERENCES `CellphoneS`.`tbl_danhmuctivi` (`id_danhmuctivi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_inch`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_inch` (
  `id_inch` INT NOT NULL AUTO_INCREMENT,
  `incht` VARCHAR(225) NULL,
  PRIMARY KEY (`id_inch`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_sanphamtivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_sanphamtivi` (
  `id_sanphamtivi` INT NOT NULL AUTO_INCREMENT,
  `tensanpham` VARCHAR(225) NULL,
  `hinhanh` VARCHAR(225) NULL,
  `hinhanh01` VARCHAR(225) NULL,
  `hinhanh02` VARCHAR(225) NULL,
  `hinhanh03` VARCHAR(225) NULL,
  `hinhanh04` VARCHAR(225) NULL,
  `hinhanh05` VARCHAR(225) NULL,
  `gia` VARCHAR(225) NULL,
  `id_inch` INT NOT NULL,
  `id_loaisanphamtivi` INT NOT NULL,
  PRIMARY KEY (`id_sanphamtivi`),
  INDEX `fk_tbl_sanphamtivi_tbl_inch1_idx` (`id_inch` ASC) VISIBLE,
  INDEX `fk_tbl_sanphamtivi_tbl_loaisanphamtivi1_idx` (`id_loaisanphamtivi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_sanphamtivi_tbl_inch1`
    FOREIGN KEY (`id_inch`)
    REFERENCES `CellphoneS`.`tbl_inch` (`id_inch`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tbl_sanphamtivi_tbl_loaisanphamtivi1`
    FOREIGN KEY (`id_loaisanphamtivi`)
    REFERENCES `CellphoneS`.`tbl_loaisanphamtivi` (`id_loaisanphamtivi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongtintivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongtintivi` (
  `id_thongtintivi` INT NOT NULL AUTO_INCREMENT,
  `tinhtrangmay` VARCHAR(225) NULL,
  `thietbidikem` VARCHAR(225) NULL,
  `baohanh` VARCHAR(225) NULL,
  `id_sanphamtivi` INT NOT NULL,
  PRIMARY KEY (`id_thongtintivi`),
  INDEX `fk_tbl_thongtintivi_tbl_sanphamtivi1_idx` (`id_sanphamtivi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongtintivi_tbl_sanphamtivi1`
    FOREIGN KEY (`id_sanphamtivi`)
    REFERENCES `CellphoneS`.`tbl_sanphamtivi` (`id_sanphamtivi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `CellphoneS`.`tbl_thongsokythuattivi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `CellphoneS`.`tbl_thongsokythuattivi` (
  `id_thongsokythuattivi` INT NOT NULL AUTO_INCREMENT,
  `kichthuocmanhinh` VARCHAR(225) NULL,
  `dophangiai` VARCHAR(225) NULL,
  `loaimanhinh` VARCHAR(225) NULL,
  `khoangcahxem` VARCHAR(225) NULL,
  `loaitivi` VARCHAR(225) NULL,
  `thuonghieu` VARCHAR(225) NULL,
  `sanxuattai` VARCHAR(225) NULL,
  `congngheanh` VARCHAR(225) NULL,
  `tansoquet` VARCHAR(225) NULL,
  `congngheamthanh` VARCHAR(225) NULL,
  `tongcongxuatloa` VARCHAR(225) NULL,
  `ketnoiinternet` VARCHAR(225) NULL,
  `ketnoikhongday` VARCHAR(225) NULL,
  `congnghehinhanh` VARCHAR(225) NULL,
  `congxuatamthanh` VARCHAR(225) NULL,
  `congusb` VARCHAR(225) NULL,
  `hedieuhanh` VARCHAR(225) NULL,
  `congnghechieuhinh` VARCHAR(225) NULL,
  `tienichnoibat` VARCHAR(225) NULL,
  `tinhnangkhac` VARCHAR(225) NULL,
  `kichthuoc` VARCHAR(225) NULL,
  `khoiluong` VARCHAR(225) NULL,
  `chatlieu` VARCHAR(225) NULL,
  `id_sanphamtivi` INT NOT NULL,
  PRIMARY KEY (`id_thongsokythuattivi`),
  INDEX `fk_tbl_thongsokythuattivi_tbl_sanphamtivi1_idx` (`id_sanphamtivi` ASC) VISIBLE,
  CONSTRAINT `fk_tbl_thongsokythuattivi_tbl_sanphamtivi1`
    FOREIGN KEY (`id_sanphamtivi`)
    REFERENCES `CellphoneS`.`tbl_sanphamtivi` (`id_sanphamtivi`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
