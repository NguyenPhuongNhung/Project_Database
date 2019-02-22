SELECT 
    thisinh.id_thiSinh,
    ten_ThiSinh,
    SUM(diem) / COUNT(mon.id_mon)
FROM
    thisinh,
    baithi_thisinh,
    baithi,
    mon
WHERE
    thisinh.id_thiSinh = baithi_thisinh.id_thiSinh
        AND baithi_thisinh.id_baiThi = baithi.id_baiThi
        AND baithi.id_mon = mon.id_mon
GROUP BY thisinh.id_thiSinh;
/*procedure*/
/*sữa điểm sinh viên khi phúc khảo*/
DELIMITER $$
drop procedure if exists suadiem $$
create procedure suadiem(id int ,diem float, mon varchar(100))
begin
declare mon varchar(100);
	select mon.ten_mon into mon from mon where mon.ten_mon = mon;
     update baithi_thisinh
            set  
				diem = diem
            where id_thiSinh=id;
	
End$$
DELIMITER ;
call suadiem(1,10,'toan');



/*function*/
/*tính điểm trung bình của một sinh viên*/
DELIMITER $$
drop function if exists `diemTb`$$
create function `diemTb`(idsv int(11)) returns float deterministic
BEGIN 
	Declare result float; 
   SELECT  sum(diem)/count(mon.id_mon) as "Điểm Trung Bình" into result
  from thisinh, baithi_thisinh, baithi,mon
  where thisinh.id_thiSinh=baithi_thisinh.id_thiSinh and baithi_thisinh.id_baiThi = baithi.id_baiThi
	and baithi.id_mon = mon.id_mon and thisinh.id_thiSinh = idsv;
	return result;
   
END$$
delimiter ; 

SELECT DIEMTB(3);