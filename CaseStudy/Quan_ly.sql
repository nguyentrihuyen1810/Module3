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
    primary key (ma_vi_tri, ma_trinh_do, ma_bo_phan),
    foreign key (ma_vi_tri) references vi_tri (ma_vi_tri),
    foreign key (ma_trinh_do) references trinh_do (ma_trinh_do),
    foreign key (ma_bo_phan) references bo_phan (ma_bo_phan)
);