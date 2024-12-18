use quan_ly_nhan_su;

insert into vi_tri (ten_vi_tri) values
('Lễ tân'),
('Phục vụ'),
('Chuyên viên'),
('Giám sát'),
('Quản lý');

insert into trinh_do (ten_trinh_do) values
('Trung cấp'),
('Cao đẳng'),
('Đại học'),
('Sau đại học');

insert into bo_phan (ten_bo_phan) values
('Hành chính'),
('Sale - Marketing'),
('Phục vụ'),
('Quản lý');

insert into nhan_vien (ho_ten, id_vi_tri, id_trinh_do, id_bo_phan, ngay_sinh, so_cmnd, luong, sdt, email, dia_chi) values
('Nguyễn Văn A', 1, 3, 1, '1990-01-15', '123456789', '10000000', '0905123456', 'nguyenvana@gmail.com', 'Hà Nội'),
('Trần Thị B', 2, 2, 3, '1995-05-20', '987654321', '8000000', '0912345678', 'tranthib@gmail.com', 'Đà Nẵng'),
('Lê Hoàng C', 3, 4, 2, '1988-07-10', '112233445', '15000000', '0938123456', 'lehoangc@gmail.com', 'Hồ Chí Minh');

insert into loai_khach (ten_loai_khach) values
('Diamond'),
('Platinum'),
('Gold'),
('Silver'),
('Member');

insert into khach_hang (id_loai_khach, ho_ten, ngay_sinh, so_cmtnd, sdt, email, dia_chi) values
(1, 'Phạm Minh D', '1992-03-05', '567890123', '0945123456', 'phamminhd@gmail.com', 'Hà Nội'),
(2, 'Hoàng Thanh E', '1985-09-12', '345678901', '0967123456', 'hoangthanh@gmail.com', 'Hải Phòng'),
(3, 'Nguyễn Thị F', '1998-12-25', '789012345', '0985123456', 'nguyenthif@gmail.com', 'Đà Nẵng');

insert into dich_vu_di_kem (ten_dich_vu_di_kem, gia, don_vi, trang_thai) values
('Massage', 500000, 'Giờ', 'Hoạt động'),
('Karaoke', 300000, 'Giờ', 'Hoạt động'),
('Thuê xe', 200000, 'Ngày', 'Hoạt động');

insert into loai_dich_vu (ten_loai_dich_vu) values
('Villa'),
('House'),
('Room');

insert into kieu_thue (ten_kieu_thue, gia) values
('Theo giờ', 200000),
('Theo ngày', 1500000),
('Theo tháng', 30000000),
('Theo năm', 360000000);

insert into dich_vu (ten_dich_vu, dien_tich, so_tang, id_loai_dich_vu, id_kieu_thue, gia_thue, trang_thai) values
('Villa Biển', 300, 2, 1, 2, '5000000', 'Còn trống'),
('House Garden', 150, 1, 2, 3, '15000000', 'Còn trống'),
('Room VIP', 50, 1, 3, 1, '1000000', 'Còn trống');

insert into hop_dong (id_nhan_vien, id_khach_hang, ngay_lap_hop_dong, ngay_ket_thuc, tien_dat_coc, tong_tien) values
(1, 1, '2024-01-01', '2024-01-07', 1000000, 5000000),
(2, 2, '2024-02-10', '2024-02-15', 2000000, 7000000),
(3, 3, '2024-03-05', '2024-03-10', 1500000, 6000000);

insert into hop_dong_chi_tiet (id_hop_dong, id_dich_vu_di_kem, so_luong) values
(1, 1, 2),
(2, 2, 3),
(3, 3, 1);


