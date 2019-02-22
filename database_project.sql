DROP database IF EXISTS `project`;
create database project;
use project;

CREATE TABLE hoi_Dong (
    id_hoi_dong VARCHAR(100) NOT NULL PRIMARY KEY,
    ten_hoi_dong VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(255),
    tinh VARCHAR(100),
    nam DATE
);
CREATE TABLE truong (
    id_truong VARCHAR(100) NOT NULL PRIMARY KEY,
    ten_truong VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(255),
    id_hoi_dong VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_hoi_dong)
        REFERENCES hoi_dong (id_hoi_dong)
);
CREATE TABLE giao_vien (
    id_giao_vien VARCHAR(100) NOT NULL PRIMARY KEY,
    ten_giao_vien VARCHAR(100) NOT NULL,
    id_truong VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(255),
    sdt INT,
    ngay_sinh DATE,
    cmnd INT,
    FOREIGN KEY (id_truong)
        REFERENCES truong(id_truong)
);


CREATE TABLE phong_thi (
    id_phong_thi INT(11) NOT NULL PRIMARY KEY,
    ten_phong VARCHAR(100) NOT NULL,
    soghe INT(11),
    id_truong VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_truong)
        REFERENCES truong (id_truong)
);


CREATE TABLE thi_sinh (
    id_thi_sinh VARCHAR(100) NOT NULL PRIMARY KEY,
    ten_thi_sinh VARCHAR(100) NOT NULL,
    ten_lop VARCHAR(100),
    ten_truong VARCHAR(100),
    cmnd INT,
    ngay_sinh DATE,
    dia_chi VARCHAR(100),
    khoa VARCHAR(100),
    id_hoi_dong VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_hoi_dong)
        REFERENCES hoi_dong (id_hoi_dong)
);

CREATE TABLE mon (
    id_mon VARCHAR(100) NOT NULL PRIMARY KEY,
    ten_mon VARCHAR(100) NOT NULL
);

CREATE TABLE bai_thi (
    id_bai_thi VARCHAR(100) NOT NULL PRIMARY KEY,
    id_phong_thi INT(11) NOT NULL,
    id_mon VARCHAR(100) NOT NULL,
    id_giao_vien VARCHAR(100) NOT NULL,
    thoi_gian_thi DATETIME,
    vang boolean,
    FOREIGN KEY (id_phong_thi)
        REFERENCES phong_thi (id_phong_thi),
    FOREIGN KEY (id_mon)
        REFERENCES mon (id_mon),
    FOREIGN KEY (id_giao_vien)
        REFERENCES giao_vien (id_giao_vien)
);
CREATE TABLE bai_thi_thi_sinh (
    id_thi_sinh VARCHAR(100) NOT NULL,
    id_bai_thi VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_thi_sinh , id_bai_thi),
    FOREIGN KEY (id_thi_sinh)
        REFERENCES thi_sinh (id_thi_sinh),
    FOREIGN KEY (id_bai_thi)
        REFERENCES bai_thi (id_bai_thi),
    diem FLOAT,
    ngay_cham DATE
);

CREATE TABLE thong_bao(
id_thong_bao int primary key not null auto_increment,
thong_bao_tin varchar(255),
ngay_thay_doi date
);
CREATE TABLE khoi(
id_khoi int primary key not null,
ten_khoi varchar(255),
id_thi_sinh VARCHAR(100) NOT NULL,
FOREIGN KEY (id_thi_sinh)
        REFERENCES thi_sinh (id_thi_sinh)
);

CREATE TABLE thong_ke(
id_thong_ke int primary key not null auto_increment,
noi_dung varchar(255),
ngay_thong_ke date
);




