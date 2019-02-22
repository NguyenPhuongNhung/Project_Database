use project;

insert into hoi_dong(id_hoi_dong,ten_hoi_dong,dia_chi,tinh,nam) 
values	('HD01','Đà Nẵng','101B Lê Hữu Trác Sơn Trà Đà Nẵng','Quảng Nam','2018-05-24'),
		('HD02','Quảng Trị','11 Ngô Quyền Thị xã Quảng Trị','Quảng Trị','2018-05-24'),
       ('HD03','Quảng Bình','99 Tô Hiến Thành Lệ Thủy','Quảng Bình','2018-05-24'),
       ('HD04','Quảng Ngãi','23 Hai Bà Trưng, Quãng Ngãi','Quảng Ngãi','2018-05-24'),
       ('HD05','TPHCM','45 Lý Thường Kiệt, TPHCM','TPHCM','2018-05-24'),
       ('HD06','Hà Nội','56 Nguyễn Văn Trỗi','Hà Nội','2018-05-24'),
       ('HD07','Nha Trang','33 Phan Đình Giót','Nha Trang','2018-05-24'),
       ('HD08','Hà Tĩnh','78 Võ Thị Sáu','Hà Tĩnh','2018-05-24'),
	   ('HD09','Nghệ An','44 Lê Duẫn','Nghệ An','2018-05-24'),
	('HD10','KomTum','45 Nguyễn Văn Linh','KomTum','2018-05-24');
       
       
insert into truong(id_truong,ten_truong,dia_chi,id_hoi_dong) 
values	('T01','THPT Hướng Hóa','101B Lê Hữu Trác Sơn Trà Đà Nẵng','HD01'),
		('T02','THPT Vĩnh Định','11 Ngô Quyền Thị xã Quảng Trị','HD02'),
       ('T03','THPT Bùi Dục Tài','99 Tô Hiến Thành Lệ Thủy','HD01'),
       ('T04','THPT Quảng Ngãi','23 Hai Bà Trưng, Quãng Ngãi','HD03'),
       ('T05',' THPT Võ Thị Sáu','45 Lý Thường Kiệt, TPHCM','HD04'),
       ('T06','THPT Phan Đình Giót','56 Nguyễn Văn Trỗi','HD05'),
       ('T07','THPT Trần Phú','33 Phan Đình Giót','HD04'),
       ('T08','THPT Lê Quý Đôn','78 Võ Thị Sáu','HD06'),
	   ('T09','THPT Nguyễn Huệ','44 Lê Duẫn','HD07'),
		('T10','THPT Lê Lợi','45 Nguyễn Văn Linh','HD08');
       
       
       
insert into giao_vien(id_giao_vien,ten_giao_vien,id_truong,dia_chi,sdt,ngay_sinh,cmnd)
values
('GV01','Nguyễn Thị Hồng','T01','Quảng Trị',01235488887,'1986-11-22',197434903),
('GV02','Nguyễn Thị Lan','T02','Đà Lạt',01654547894,'1966-05-23',179544545),
('GV03','Đặng Phương Bắc','T03','Sa Pa',01689423587,'1987-08-03',545645645),
('GV04','Hồ Văn Hoàng','T01','Đắc Lắc',01325478255,'1967-07-02',657524397),
('GV05','Lê Thị Hoài Thương','T03','Đắc Nông',0123514477,'1988-07-27',8298107),
('GV06','Nguyễn Thị Phương Nhung','T04','Lâm Đồng',01478962314,'1968-12-01',1009682),
('GV07','Trần Thị Thảo','T05','TP HCM',01235698741,'1989-06-04',11780553),
('GV08','Phạm Thị Thu Hà','T06','Hà Nội',01256897451,'1969-02-11',13573924),
('GV09','Nguyễn Trần Vinh','T05','Đà Nẵng',01256987142,'1990-01-04',15269295),
('GV10','Hoàng Thanh Vi','T07','Quảng Nam',01258589888,'1970-04-11',17003846);



insert into phong_thi(id_phong_thi,ten_phong,soghe,id_truong)
values
(1,'201',25,'T02'),
(2,'202',25,'T01'),
(3,'203',26,'T03'),
(4,'204',25,'T01'),
(5,'205',25,'T04'),
(6,'206',25,'T05'),
(7,'207',25,'T06'),
(8,'209',25,'T07'),
(9,'209',25,'T07'),
(10,'210',25,'T02'),
(11,'211',25,'T01'),
(12,'212',25,'T06'),
(13,'213',25,'T04'),
(14,'214',25,'T09');


INSERT INTO thi_sinh(id_thi_sinh,ten_thi_sinh,ten_lop,ten_truong,cmnd,ngay_sinh,dia_chi,khoa,id_hoi_dong)
values
(1,'Nguyễn Thị Phương Nhung','12B3','THPT Bùi Dục Tài',195653231,'1999-10-20','Hải Hòa-Hải Lăng-Quảng Trị','2013-2017','HD01'),
(2,'Nguyễn Thị Thảo','12B4','THPT Vĩnh Định',1956532390,'1999-10-20','Triệu Hải-Triệu Phong-Quảng Trị','2013-2017','HD02'),
(3,'Đặng Phương Nam','12A6','THPT Lê Quý Đôn',195653237,'1999-10-20','Phước Mỹ-Sơn Trà-Đà Nẵng','2013-2017','HD03'),
(4,'Hồ Văn Huy','12B9','THPT Hướng Hóa',195653451,'1999-10-20','Hà Nam-Hướng Hải-Bình Định','2013-2017','HD06'),
(5,'Nguyễn Ngọc Thu Hương','12A1','THPT Võ Thị Sáu',195453231,'1999-10-20','Đống Tàu-Đống Đa-Hà Nội','2013-2017','HD04'),
(6,'Nguyễn Trần Vinh','12B8','THPT Quảng Ngãi',193453231,'1999-10-20','Hiền Phước-Hòa Liên-Quảng Nam','2013-2017','HD06'),
(7,'Phạm Thị Thu Hà','12B12','THPT Lê Lợi',195903231,'1999-10-20','Nam Thủy-Lệ Thủy-Quảng Bình','2013-2017','HD04'),
(8,'Võ Thị Xuân Lộc','12B3','THPT Bùi Thị Xuân',195650731,'1999-10-20','An Nam-Phong Ba-Đà Lạt','2013-2017','HD09'),
(9,'Nguyễn Thị Ngân','12B3','THPT Hướng Hóa',195621231,'1999-10-20','Đông Ba-Phú Vang-Thừa Thiên Huế','2013-2017','HD07'),
(10,'Hoàng Thị Ngọc Trâm','12B3','THPT Tây Sơn',199653271,'1999-10-20','Ba lan-Trang Nguyên-Bình Định','2013-2017','HD05'),
(11,'Lê Thị Thanh Hà','12B3','THPT Phan Đình Giót',169965677,'1999-10-20','Trung An-Hải Thủy-Nha Trang','2013-2017','HD08'),
(12,'Huỳnh Thị Ngọc','12B3','THPT Lê Lợi',199653271,'1999-10-20','Nghiêm Anh-Tây Tiến-TPHCM','2013-2017','HD05'),
(13,'Trần Thị Linh','12B3','THPT Võ Thị Sáu ',199653271,'1999-10-20','Đông Nam-Bố Trạch-Quảng Bình','2013-2017','HD04'),
(14,'Hồ Thị Kim Ngân','12B3','THPT Lê Lợi',199273271,'1999-10-20','An Khang-Thịnh Vượng-Bắc Ninh','2013-2017','HD02'),
(15,'Nguyễn Đông An','12B3','THPT Phan Đình Giót',19922271,'1999-10-20','Bắc Kì-Hà Lan-Phan Thiết','2013-2017','HD07'),
(16,'Đào Bá Qúy','12B3','THPT Tây Sơn',188653271,'1999-10-20','Phong Ba-Giang Hà-Quảng Ngãi','2013-2017','HD04');


insert into mon(id_mon,ten_mon)
values
(1,'Toán'),
(2,'Lý'),
(3,'Hóa'),
(4,'Sinh'),
(5,'Văn'),
(6,'Sử'),
(7,'Địa'),
(8,'Giao dục công dân'),
(9,'Tiếng Anh');

insert into bai_thi(id_bai_thi,id_phong_thi,id_mon,id_giao_vien,thoi_gian_thi)
values
(1,2,2,'GV01','2018-10-19 06:30:00'),
(2,5,5,'GV04','2018-10-18 07:30:00'),
(3,7,3,'GV02','2018-10-17 07:30:00'),
(4,10,6,'GV10','2018-10-19 13:30:00'),
(5,7,8,'GV09','2018-10-18 13:30:00'),
(6,2,1,'GV05','2018-10-17 06:30:00'),
(7,1,9,'GV03','2018-10-18 07:30:00'),
(8,13,4,'GV02','2018-10-19 13:30:00'),
(9,14,7,'GV06','2018-10-19 06:30:00'),
(10,9,8,'GV07','2018-10-17 07:30:00'),
(11,8,4,'GV09','2018-10-18 06:30:00'),
(12,6,7,'GV08','2018-10-19 06:30:00'),
(13,4,2,'GV10','2018-10-17 13:30:00'),
(14,8,9,'GV09','2018-10-18 13:30:00');

insert into bai_thi_thi_sinh(id_thi_sinh,id_bai_thi,diem,ngay_cham)
values
(1,3,7,'2018-11-01'),
(2,10,8,'2018-11-01'),
(3,7,9,'2018-11-02'),
(4,9,6,'2018-11-02'),
(5,6,4,'2018-11-01'),
(7,11,4,'2018-11-01'),
(8,13,9,'2018-11-02'),
(16,12,7,'2018-11-01'),
(12,4,3,'2018-11-02'),
(15,9,8,'2018-11-02'),
(10,6,7,'2018-11-01'),
(9,1,9,'2018-11-01'),
(11,2,6,'2018-11-02');



























