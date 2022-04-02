create schema QuanLyFurama;
use QuanLyFurama;

create table vi_tri(
	ma_vi_tri int primary key,
    ten_vi_tri varchar(45)
);

create table trinh_do(
	ma_trinh_do int primary key,
    ten_trinh_do varchar(45)
);

create table bo_phan(
	ma_bo_phan int primary key,
    ten_bo_phan varchar(45)
);

create table nhan_vien(
	ma_nhan_vien int primary key,
    ho_ten varchar(45),
    ngay_sinh date,
    so_cmnd varchar(45),
    luong double,
    so_dien_thoai varchar(50),
    email varchar(45),
    dia_chi varchar(45),
    ma_vi_tri int,
    ma_trinh_do int,
    ma_bo_phan int,
    foreign key (ma_vi_tri) references vi_tri (ma_vi_tri),
    foreign key (ma_trinh_do) references trinh_do (ma_trinh_do),
    foreign key (ma_bo_phan) references bo_phan (ma_bo_phan)
);

create table loai_khach(
	ma_loai_khach int primary key,
    ten_loai_khach varchar(45)
);

create table khach_hang(
	ma_khach_hang int primary key,
    ma_loai_khach int,
    ho_ten varchar(45),
    ngay_sinh date,
	gioi_tinh bit(1),
    so_cmnd varchar(45),
    so_dien_thoai varchar(45),
    email varchar(45),
    dia_chi varchar(45),
    foreign key (ma_loai_khach) references loai_khach (ma_loai_khach)
);

create table hop_dong(
	ma_hop_dong int primary key,
    ngay_lam_hop_dong datetime,
    ngay_ket_thuc datetime,
    tien_dat_coc double,
    ma_nhan_vien int,
    ma_khach_hang int,
    ma_dich_vu int,
    foreign key (ma_nhan_vien) references nhan_vien (ma_nhan_vien),
    foreign key (ma_khach_hang) references khach_hang (ma_khach_hang),
    foreign key (ma_dich_vu) references dich_vu (ma_dich_vu)
);

create table hop_dong_chi_tiet(
	ma_hop_dong_chi_tiet int primary key,
    ma_hop_dong int,
    ma_dich_vu_di_kem int,
	so_luong int,
    foreign key (ma_hop_dong) references hop_dong (ma_hop_dong),
    foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem (ma_dich_vu_di_kem)
);

create table dich_vu_di_kem(
	ma_dich_vu_di_kem int primary key,
    ten_dich_vu_di_kem varchar(45),
    gia double,
    don_vi varchar(10),
    trang_thai varchar(45)
);

create table loai_dich_vu(
	ma_loai_dich_vu int primary key,
    ten_loai_dich_vu varchar(45)
);

create table kieu_thue(
	ma_kieu_thue int primary key,
    ten_kieu_thue varchar(45)
);

create table dich_vu(
	ma_dich_vu int primary key,
    ten_dich_vu varchar(45),
    dien_tich int,
    chi_phi_thue double,
    so_nguoi_toi_da int,
    ma_kieu_thue int,
    ma_loai_dich_vu int,
    tieu_chuan_phong varchar(45),
    mo_ta_tien_nghi_khac varchar(45),
    dien_tich_ho_boi double,
    so_tang int,
    foreign key (ma_kieu_thue) references kieu_thue (ma_kieu_thue),
    foreign key (ma_loai_dich_vu) references loai_dich_vu (ma_loai_dich_vu)
);

-- cau 1 --
insert into vi_tri (ma_vi_tri, ten_vi_tri) 
values (1, 'Lễ tân'),
	   (2, 'Phục vụ'),
       (3, 'Chuyên viên'),
       (4, 'Giám sát'),
       (5, 'Quản lý'),
       (6, 'Giám đốc');
       
insert into trinh_do (ma_trinh_do, ten_trinh_do)
values (1, 'Trung cấp'),
	   (2, 'Cao đẳng'),
       (3, 'Đại học'),
       (4, 'Sau đại học');
       
insert into bo_phan (ma_bo_phan, ten_bo_phan)
values (1, 'Sale - Marketing'),
	   (2, 'Hành chính'),
       (3, 'Phục vụ'),
       (4, 'Quản lý');
       
insert into nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
values (1, 'Nguyễn Văn An', '1970-11-07', 456231786, 10000000, 0901234151, 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', 1, 3, 1), 
	   (2, 'Lê Văn Bình', '1997-04-09', 654231234, 7000000, 0934212314, 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', 1, 2, 2),
       (3, 'Hồ Thị Yến', '1995-12-12', 999231723, 14000000, 0412352315, 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', 1, 3, 2),
       (4, 'Võ Công Toàn', '1980-04-04', 123231365, 17000000, 0374443232, 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', 1, 4, 4),
       (5, 'Nguyễn Bỉnh Phát', '1992-12-09', 454363232, 6000000, 0902341231, 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', 2, 1, 1),
       (6, 'Khúc Nguyễn An Nghi', '2000-11-08', 964542311, 7000000, 0978653213, 'annghi@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', 2, 2, 3),
       (7, 'Nguyễn Hữu Hà', '1993-01-01', 534323231, 8000000, 0941234553, 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', 2, 3, 2),
       (8, 'Nguyễn Hà Đông', '1989-09-03', 234414123, 9000000, 0642123111, 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', 2, 4, 4),
       (9, 'Tòng Hoang', '1982-09-03', 256781231, 6000000, 0245144444, 'hoangtong@gmail.com', '213 Hàm Nghi, ĐÀ Nắng', 2, 4, 4),
       (10, 'Nguyễn Công Đạo', '1994-01-08', 7554434343, 8000000, 0988767111, 'nguyencongdao12@gmail.com', '6 Hòa Khánh, Đồng Nai', 2, 3, 2);
       
insert into loai_khach (ma_loai_khach, ten_loai_khach)
values (1, 'Diamond'),
	   (2, 'Platinium'),
       (3, 'Gold'),
       (4, 'Silver'),
       (5, 'Member');
	
insert into khach_hang (ma_khach_hang, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi, ma_loai_khach)
values (1, 'Nguyễn Thị Hào', '1970-11-07', 0, 643431213, 0945423362, 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng', 5), 
	   (2, 'Phạm Xuân Diệu', '1992-08-08', 1, 865342123, 0954333333, 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị', 3),
       (3, 'Trương Đình Nghệ', '1990-02-27', 1, 488645199, 0373213122, 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh', 1),
       (4, 'Dương Văn Quan', '1981-07-08', 1, 543432111, 0490039241, 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng', 1),
       (5, 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, 795453345, 0312345678, 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai', 4),
       (6, 'Tôn Nữ Mộc Châu', '2005-12-06', 0, 732434215, 0988888844, 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng', 4),
       (7, 'Nguyễn Mỹ Kim', '1984-04-08', 0, 856453123, 0912345698, 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh ', 1),
       (8, 'Nguyễn Thị Hào', '1999-04-08', 0, 965656433, 0763212345, 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum', 3),
       (9, 'Trần Đại Danh', '1994-07-01', 1, 432341235, 0643343433, 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quãng Ngãi', 1),
       (10, 'Nguyễn Tâm Đắc', '1989-07-01', 1, 344343432, 0987654321, 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng', 2);
    
insert into kieu_thue (ma_kieu_thue, ten_kieu_thue)
values (1, 'Year'),
	   (2, 'Mounth'),
       (3, 'Day'),
       (4, 'Hour');

insert into loai_dich_vu (ma_loai_dich_vu, ten_loai_dich_vu)
values (1, 'Villa'),
	   (2, 'House'),
       (3, 'Room');
	
insert into dich_vu (ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, ma_kieu_thue, ma_loai_dich_vu)
values (1, 'Villa Beach Front', 25000, 10000000, 10, 'vip', 'Có hồ bơi', 500, 4, 3, 1),
	   (2, 'House Princess 01', 14000, 5000000, 7, 'vip', 'Có thêm bếp nướng', null, 3, 2, 2),
       (3, 'Room Twin 01', 5000, 1000000, 2, 'normal', 'Có tivi', null, null, 4, 3),
       (4, 'Villa No Beach Front', 22000, 900000, 8, 'normal', 'Có hồ bơi', 300, 3, 3, 1),
       (5, 'House Princess 02', 10000, 400000, 5, 'normal', 'Có thêm bếp nướng', null, 2, 3, 2),
       (6, 'Room Twin 02', 3000, 900000, 2, 'normal', 'Có tivi', null, null, 4, 3);

insert into dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai)
values (1, 'Karaoke', 10000, 'giờ', 'tiện nghi, hiện đại'),
	   (2, 'Thuê xe máy', 10000, 'chiếc', 'hỏng 1 xe'),
       (3, 'Thuê xe đạp', 20000, 'chiếc', 'tốt'),
       (4, 'Buffet buổi sáng', 15000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),  
       (5, 'Buffet buổi trưa', 90000, 'suất', 'đầy đủ đồ ăn, tráng miệng'),
       (6, 'Buffet buổi tối', 16000, 'suất', 'đầy đủ đồ ăn, tráng miệng');

insert into hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
values (1,'2020-12-08', '2020-12-08', 0, 3, 1, 3),
	   (2,'2020-07-14', '2020-07-21', 200000, 7, 3, 1),
       (3,'2021-03-15', '2021-03-17', 50000, 3, 4, 2),
       (4,'2021-01-14', '2021-01-18', 100000, 7, 5, 5),
       (5,'2021-07-14', '2021-07-15', 0, 7, 2, 6),
       (6,'2021-06-01', '2021-06-03', 0, 7, 7, 6),
       (7,'2021-09-02', '2021-09-05', 100000, 7, 4, 4),
       (8,'2021-06-17', '2021-06-18', 150000, 3, 4, 1),
       (9,'2020-11-19', '2020-11-19', 0, 3, 4, 3),
       (10,'2021-04-12', '2021-04-14', 0, 10, 3, 5),
       (11,'2021-04-25', '2021-04-25', 0, 2, 2, 1),
       (12,'2021-05-25', '2021-05-27', 0, 7, 10, 1);

insert into hop_dong_chi_tiet (ma_hop_dong_chi_tiet, so_luong, ma_hop_dong, ma_dich_vu_di_kem)
values (1, 5, 2, 4),
	   (2, 8, 2, 5),
       (3, 15, 2, 6),
       (4, 1, 3, 1),
       (5, 11, 3, 2),
       (6, 1, 1, 3),
       (7, 2, 1, 2),
       (8, 2, 12, 2);

-- cau 2 -- 
select * from nhan_vien
where substring_index(ho_ten, ' ', -1)
regexp '^[HTK]'
and length(ho_ten) <=15;

-- cau 3 --
select * from khach_hang
where year(now()) - year(ngay_sinh) between 18 and 50
and (dia_chi like '%Quảng Trị' or dia_chi like '%Đà Nẵng');

-- cau 4 --
select kh.ho_ten,
count(kh.ma_khach_hang) as so_lan_dat_phong
from khach_hang kh
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach 
where lk.ten_loai_khach = 'Diamond'
group by kh.ma_khach_hang
order by so_lan_dat_phong;

-- cau 5 --
select kh.ma_khach_hang, kh.ho_ten, sum(hdct.so_luong * dvdk.gia) + dv.chi_phi_thue 
from khach_hang kh
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by kh.ma_khach_hang, kh.ho_ten;

-- cau 6 --
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.chi_phi_thue, ldv.ten_loai_dich_vu 
from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where not exists 
(select * from hop_dong 
where ma_dich_vu = dv.ma_dich_vu
and ngay_lam_hop_dong between '2021-01-01' and '2021-03-31');

-- cau 7 --
select dv.ma_dich_vu, dv.ten_dich_vu, dv.dien_tich, dv.so_nguoi_toi_da, dv.chi_phi_thue, ldv.ten_loai_dich_vu
from dich_vu dv
join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
where exists (select * from hop_dong
			  where ma_dich_vu = dv.ma_dich_vu
              and year (ngay_lam_hop_dong) = '2020')
              and not exists (select * from hop_dong
							  where ma_dich_vu = dv.ma_dich_vu
                              and year (ngay_lam_hop_dong) = '2021');
              
-- cau 8 --
-- C1 --
select kh.ho_ten from khach_hang kh
group by ho_ten;
-- C2 --
select kh.ho_ten from khach_hang kh
union 
select kh.ho_ten from khach_hang kh;
-- C3 --
select distinct kh.ho_ten from khach_hang kh;

-- cau 9 --
select month(hd.ngay_lam_hop_dong) as thang, count(1) as so_lan_dat_phong from hop_dong hd
where year(hd.ngay_lam_hop_dong) = '2021'
group by month(hd.ngay_lam_hop_dong)
order by thang;

-- cau 10 --
select hd.ma_hop_dong, hd.ngay_lam_hop_dong, hd.ngay_ket_thuc, hd.tien_dat_coc, count(dvdk.ma_dich_vu_di_kem) as so_luong_dich_vu
from hop_dong hd
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hd.ma_dich_vu
group by hd.ma_dich_vu;

-- cau 11 --
select kh.ho_ten, dvdk.ten_dich_vu_di_kem, dvdk.gia, dvdk.don_vi, dvdk.trang_thai
from dich_vu dv
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join khach_hang kh on kh.ma_khach_hang = kh.ma_khach_hang
join loai_khach lk on lk.ma_loai_khach = kh.ma_loai_khach 
where lk.ten_loai_khach = 'Diamond' and (dia_chi like '%Vinh' or dia_chi like '%Quảng Ngãi');

-- cau 12 --
select hd.ma_hop_dong, nv.ho_ten, kh.ho_ten, kh.so_dien_thoai, dv.ten_dich_vu, sum(dvdk.ma_dich_vu_di_kem), hd.tien_dat_coc
from dich_vu dv
join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where (hd.ngay_lam_hop_dong between '2020-10-01' and '2020-12-31') 
and (hd.ngay_lam_hop_dong between '2021-01-01' and '2021-06-30');

-- cau 13 --
select dvdk.ma_dich_vu, dvdk.ten_dich_vu, count(*) as mount 
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by dvdk.ten_dich_vu_di_kem;

-- cau 14 --
select hd.ma_hop_dong, dv.ten_dich_vu, dvdk.ten_dich_vu_di_kem, count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung 
from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu  
group by dvdk.ten_dich_vu_di_kem
having so_lan_su_dung = '1';

-- cau 15 --
select nv.ma_nhan_vien, nv.ho_ten, td.ten_trinh_do, bp.ten_bo_phan, nv.so_dien_thoai, nv.dia_chi, count(nv.ma_nhan_vien) amount
from nhan_vien nv
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where year(hd.ngay_lam_hop_dong) between '2020' and '2021'
group by nv.ma_nhan_vien
having amount <= 3;

-- cau 16 --
delete from nhan_vien
where not exists (select * from hop_dong
				  where year(ngay_lam_hop_dong) between '2019' and '2021'
                  and hop_dong.ma_nhan_vien = nhan_vien.ma_nhan_vien);
select distinct ma_nhan_vien, ten_nhan_vien from hop_dong where year (ngay_lam_hop_dong) between '2020' and '2021';
                  
-- cau 17* --
update khach_hang
set khach_hang.ma_loai_khach = 1;

-- cau 18 --
delete from khach_hang
where not exists (select * from hop_dong
				  where year (ngay_lam_hop_dong) < '2021'
                  and hop_dong.ma_khach_hang = khach_hang.ma_khach_hang);
select distinct ma_khach_hang, ten_khach_hang from hop_dong where year (ngay_lam_hop_dong) < '2021';

-- cau 19* --
update dich_vu_di_kem
set gia = gia * 2
where year (hd.ngay_lam_hop_dong) = 2020;

-- cau 20 --
select nv.ma_nhan_vien, nv.ho_ten, nv.email, nv.so_dien_thoai, nv.ngay_sinh, nv.dia_chi from nhan_vien nv
union all
select kh.ma_khach_hang, kh.ho_ten, kh.email, kh.so_dien_thoai, kh.ngay_sinh, kh.dia_chi from khach_hang kh;

-- cau 21 --
create view v_nhan_vien as
select nv.ma_nhan_vien, nv.ho_ten from nhan_vien nv
join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where hd.ngay_lam_hop_dong = '2019-12-12' and nv.dia_chi like '%Hải Châu' 
group by hd.ma_nhan_vien
having count(hd.ma_nhan_vien) >=1;

-- cau 22 --
update v_nhan_vien set dia_chi = 'Liên Chiểu';

-- cau 23 --
delimiter //
create procedure sp_xoa_khach_hang (ma_khach_hang int)
begin
delete from khach_hang where ma = ma_khach_hang;
end //
delimiter ;