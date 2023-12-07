create database btvn_2
use btvn_2
go
create table vattu(
mavtu nvarchar(20) primary key,
tenvtu nvarchar(100),
dvtinh nvarchar(100),
phantram float
)
create table dondh(
sodh nvarchar(20) primary key,
ngaydh date,
manhacc nvarchar(20)
)
create table ctpxuat(
sopx nvarchar(20) primary key,
mavtu nvarchar(20),
slxuat int,
dgxuat decimal,
foreign key (mavtu) references vattu(mavtu)
)
create table pxuat(
sopx nvarchar(20) primary key,
ngayxuat date,
tenkh nvarchar(100)
)
create table ctdondh(
sodh nvarchar(20),
mavtu nvarchar(20),
sldat int,
foreign key (sodh) references dondh(sodh),
foreign key (mavtu) references vattu(mavtu)
)
create table nhacc(
manhacc nvarchar(20) primary key,
tenhacc nvarchar(100),
diachi ntext,
dienthoai nvarchar(20))
create table pnhap(
sopn nvarchar(20) primary key,
ngaynhap date,
sodh nvarchar(20),
foreign key (sodh) references dondh(sodh)
)
create table ctpnhap(
sopn nvarchar(20) primary key,
mavtu nvarchar(20),
slnhap int,
dgnhap decimal,
foreign key (mavtu) references vattu(mavtu)
)
create table tonkho(
namthang date primary key,
mavtu nvarchar(20),
sldau int,
tongsln int,
tongslx int,
slcuoi int,
foreign key (mavtu) references vattu(mavtu)
)