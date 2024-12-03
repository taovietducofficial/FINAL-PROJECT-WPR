
CREATE TABLE HOCVIEN	
(
	MaHocVien varchar (10) PRIMARY KEY,
	TenHocVien nvarchar (100) NOT NULL,
	NgaySinh datetime NOT NULL,
	GioiTinh nvarchar (10) NOT NULL,
	DiaChi nvarchar (1000) NOT NULL,
	SoDienThoai varchar (50) DEFAULT '',
	ChungMinhNhanDan varchar (50) NOT NULL,
	SoTaiKhoan varchar (50) DEFAULT '',
	RankLevel float not null,
	check (SoDienThoai like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT check_Level_HOCVIEN
	CHECK (RankLevel <= 9.0 AND RankLevel >= 1.0),
	CONSTRAINT CHECK_NGSINH_HV CHECK (NgaySinh < getdate())
)

INSERT INTO HOCVIEN (MaHocVien, TenHocVien, NgaySinh, GioiTinh, DiaChi, SoDienThoai, ChungMinhNhanDan, RankLevel) VALUES
	('STU0001', N'Mai Anh Khoa', '2003-04-11', 'Nam', N'Đồng Nai', '0869628507', '12345678910', '1.0'),
	('STU0002', N'Quang Hải', '2004-02-28', 'Nam', N'Sài Gòn', '0606227022', '065102929801', '1.0'),
	('STU0003', N'Lê Văn Đô', '2003-01-29', 'Nam', N'Bến Tre', '0206226174', '075102929802', '1.0'),
	('STU0004', N'Đặng Văn Lâm', '2003-06-20', 'Nam', N'Bạc Liêu', '0506226165', '042102929682', '3.0'),
	('STU0005', N'Huỳnh Như', '2001-01-28', N'Nữ', N'Hồ Chí Minh', '0876226132', '075102929199', '3.5'),
	('STU0006', N'Hoàng Thị Loan', '2005-02-06', N'Nữ', N'Hà Nội', '0606226547', '085102929444', '4.0'),
	('STU0007', N'Nguyễn Văn Toàn', '2006-12-04', 'Nam', N'Hồ Chí Minh', '0706226162', '075102929149', '3.0'),
	('STU0008', N'Nguyễn Tiến Linh', '2005-10-20', 'Nam', N'Bình Dương', '0506226758', '065102929547', '3.5'),
	('STU0009', N'Đỗ Hùng Dũng', '2003-09-08', 'Nam', N'Hà Nội', '0756226454', '016102929321', '4.0'),
	('STU0010', N'Quế Ngọc Hải', '2003-05-15', 'Nam', N'Nghệ An', '0126226121', '034102929321', '1.5'),
	('STU0011', N'Nguyễn Hoàng Đức', '2001-01-11', 'Nam', N'Cẩm Giàng', '0316226121', '099102929321', '1.0'),
	('STU0012', N'Bùi Tiến Dũng', '2002-02-28', 'Nam', N'Phúc Thịnh', '0866226121', '031102929321', '5.5'),
	('STU0013', N'Nguyễn Văn Quyết', '2001-07-01', 'Nam', N'Hồ Chí Minh', '0796226121', '015124929321', '1.5'),
	('STU0014', N'Vũ Văn Thanh', '2004-04-14', 'Nam', N'Tứ Cường', '0406476121', '015102968321', '2.0'),
	('STU0015', N'Đoàn Văn Hậu', '2000-04-19', 'Nam', N'Hồ Chí Minh', '0406226121', '015102929321', '1.0'),
	('STU0016', N'Nguyễn Anh Đức', '2005-10-24', 'Nam', N'Sông Bé', '0406476121', '015102968321', '2.0'),
	('STU0017', N'Lương Xuân Trường', '2004-04-28', 'Nam', N'Tuyên Quang', '0445226121', '015782929321', '1.5'),
	('STU0018', N'Phan Văn Đức', '2005-04-11', 'Nam', N'Tăng Thành', '0406221521', '015102978321', '3.0'),
	('STU0019', N'Nguyễn Phong Hồng Duy', '2002-06-13', 'Nam', N'Chơn Thành', '0508123456', '025162913426', '1.0'),
	('STU0020', N'Nguyễn Thị Thanh Nhã', '2004-09-25', N'Nữ', N'Hà Nội', '0401116121', '015108729321', '2.0'),
	('STU0021', N'Chương Thị Kiều', '2001-08-19', N'Nữ', N'Gò Quao', '0406123421', '015105420321', '1.0'),
	('STU0022', N'Nguyễn Thị Tuyết Dung', '2000-12-13', N'Nữ', N'Bình Lục', '0742226121', '065702929321', '2.5'),
	('STU0023', N'Phạm Hải Yến', '2004-11-09', N'Nữ', N'Hà Nội', '0196226121', '01452929321', '1.5'),
	('STU0024', N'Bùi Hoàng Việt Anh', '2001-01-01', 'Nam', N'Thái Bình', '0404876121', '012152929321', '1.0'),
	('STU0025', N'Nguyễn Trọng Hoàng', '2003-04-14', 'Nam', N'Nghệ An', '0406214521', '015145629321', '1.5'),
	('STU0026', N'Hồ Tấn Tài', '2004-11-06', 'Nam', N'Hoài Ân', '0406226003', '015102900121', '1.5'),('STU0027', N'Nguyễn Tuấn Anh', '2000-05-16', 'Nam', N'Quỳnh Phụ', '0406220021', '015102900421', '2.5'),
	('STU0028', N'Trần Đình Trọng', '2000-04-19', 'Nam', N'Hồ Chí Minh', '0406067121', '015100729321', '1.5'),
	('STU0029', N'Đỗ Duy Mạnh', '2002-09-29', 'Nam', N'Bình Định', '0406005121', '015006929321', '2.0'),
	('STU0030', N'Nguyễn Thành Chung', '1999-07-08', 'Nam', N'Hà Nội', '0404806121', '015148129321', '4.0'),
	('STU0031', N'Bùi Tấn Trường', '2003-02-19', 'Nam', N'Lai Vung', '0406187121', '014822929321', '3.0'),
	('STU0032', N'Hà Đức Chinh', '2004-09-22', 'Nam', N'Xuân Đài', '0401546121', '01510749321', '1.0'),
	('STU0033', N'Nguyễn Văn A', '2000-04-23', 'Nam', N'Hồ Chí Minh', '0176452121', '097102929311', '1.0'),
	('STU0034', N'Trần Minh Vương', '2000-03-28', 'Nam', N'Thụy Chính', '0428826121', '015289929321', '1.5'),
	('STU0035', N'Quan Văn Chuẩn', '2002-07-01', 'Nam', N'Chiêm Hóa', '0402486121', '015124929321', '2.5'),
	('STU0036', N'Huỳnh Tấn Sinh', '2007-06-04', 'Nam', N'Duy Hải', '0306173821', '011785929321', '3.0'),
	('STU0037', N'Nguyễn Hai Long', '2004-04-20', 'Nam', N'Lào Cai', '0417551121', '011788929321', '1.0'),
	('STU0038', N'Phạm Xuân Mạnh', '2004-04-21', 'Nam', N'Hồ Chí Minh', '0786226121', '015102929321', '5.0'),
	('STU0039', N'Nguyễn Hải Huy', '2002-04-22', 'Nam', N'Quảng Ninh', '0117726121', '076102929351', '1.5'),
	('STU0040', N'Lê Văn Xuân', '2000-04-23', 'Nam', N'Hồ Chí Minh', '0176452121', '097102929311', '1.0');
GO
CREATE TABLE GIAOVIEN
(
	MaGiaoVien varchar (10) PRIMARY KEY,
	TenGiaoVien nvarchar (100) NOT NULL,
	NgaySinh datetime NOT NULL,
	GioiTinh nvarchar (10) NOT NULL,
	DiaChi nvarchar (1000) NOT NULL,
	SoDienThoai varchar (50),
	ChungMinhNhanDan varchar (50) NOT NULL,
	SoTaiKhoan varchar (50) DEFAULT '',
	RankLevel float not null,
	Luong float DEFAULT 0,
	check (SoDienThoai like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT check_Level_Teacher
	CHECK (RankLevel >= 7.0 AND RankLevel <= 9.0),
	CONSTRAINT CHECK_NGSINH_GV CHECK (NgaySinh < getdate())
)

INSERT INTO GIAOVIEN (MaGiaoVien, TenGiaoVien, NgaySinh, GioiTinh, DiaChi, SoDienThoai, ChungMinhNhanDan, RankLevel)
VALUES
	('TEA0001', N'Trần Văn A', '1980-06-20', 'Nam', N'Hồ Chí Minh', '0905227152', '079102929818', '8.0'),
	('TEA0002', N'Nguyễn Thị Hồng', '1978-05-24', N'Nữ', N'Hà Nội', '0306227152', '057152464', '8.5'),
	('TEA0003', N'Nguyễn Tiến Dũng', '1990-12-24', 'Nam', N'Cần Thơ', '0406227142', '065102929810', '7.5'),
	('TEA0004', N'Lê Thị Mai', '1985-09-15', N'Nữ', N'Hải Phòng', '0906332752', '068452929816', '8.0'),
	('TEA0005', N'Phạm Văn Bình', '1992-03-10', 'Nam', N'Đà Nẵng', '0556227199', '070102929813', '8.5'),
	('TEA0006', N'Nguyễn Văn Nam', '1982-08-12', 'Nam', N'Bình Dương', '0656227188', '083102929812', '7.0'),
	('TEA0007', N'Trần Thị Hương', '1995-02-28', N'Nữ', N'Đồng Nai', '0616227177', '092152464', '7.5'),
	('TEA0008', N'Hoàng Văn Tùng', '1987-11-05', 'Nam', N'Đắk Lắk', '0506227166', '081102929816', '8.0'),
	('TEA0009', N'Lê Thị Anh', '1998-06-30', N'Nữ', N'Hải Dương', '0226227155', '099102929814', '8.5'),
	('TEA0010', N'Nguyễn Văn Long', '1984-04-17', 'Nam', N'Nghệ An', '0386227144', '083152464', '7.5');

GO
CREATE TABLE NGQUANLY
(
	MaNguoiQuanLy varchar (10) PRIMARY KEY,
	TenNguoiQuanLy nvarchar (100) NOT NULL,
	NgaySinh datetime NOT NULL,
	GioiTinh varchar (10) NOT NULL,
	DiaChi nvarchar (1000) NOT NULL,
	SoDienThoai varchar (50) DEFAULT '',
	ChungMinhNhanDan varchar (50) NOT NULL,
	SoTaiKhoan varchar (50) DEFAULT '',
	RankLevel float not null,
	check (SoDienThoai like '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
	CONSTRAINT check_Level_NGQUANLY
	CHECK (RankLevel <= 9.0 AND RankLevel >= 1.0),
	CONSTRAINT CHECK_NGSINH_QL CHECK (NgaySinh < getdate())
)

INSERT INTO NGQUANLY (MaNguoiQuanLy, TenNguoiQuanLy, NgaySinh, GioiTinh, DiaChi, SoDienThoai, ChungMinhNhanDan, RankLevel) 
VALUES ('MNG001', 'Admin', '11-04-2003', 'Nam', N'Biên Hòa', '0869628507', '075203001794', 7.5) 

GO
CREATE TABLE KHOAHOC
(
	MaKhoaHoc varchar (10) PRIMARY KEY,
	TenKhoaHoc varchar (50) NOT NULL,
	LevelDauVao float NOT NULL,
	LevelDauRa float NOT NULL,
	SoTuanHoc int NOT NULL,
	LevelCuaGiaoVien float NOT NULL,
	CONSTRAINT check_Level 
	CHECK(LevelDauVao < LevelDauRa)
)

INSERT INTO KHOAHOC VALUES 
	('BS', 'BASIC', '0.0', '2.0', '5', '7.0'),
	('PF', 'PREFOUNDATIONN', '2.0', '4.0', '5', '7.0'),
	('FO', 'FOUNDATION', '4.0', '5.0', '5', '7.0'),
	('LVA', 'LEVELA', '5.0', '6.0', '10', '8.0'),
	('LVB', 'LEVELB', '6.0', '7.0', '10', '8.0');
GO
CREATE TABLE CA
 (	
	MaCa varchar(5) PRIMARY KEY,
	ThoiGianBatDau datetime NOT NULL,
	ThoiGianKetThuc datetime NOT NULL,
	CONSTRAINT CHECK_THOIGIAN CHECK (ThoiGianBatDau < ThoiGianKetThuc)
)

INSERT INTO CA VALUES 
	('CA01','17:45:00','19:45:00'),
	('CA02','19:45:00','21:45:00');
GO
CREATE TABLE NGUOIDUNG
(
	MaNguoiDung varchar (10) PRIMARY KEY
)

INSERT INTO NGUOIDUNG VALUES
	('STU0001'),
	('STU0002'),
	('STU0003'),
	('STU0004'),
	('STU0005'),
	('STU0006'),
	('STU0007'),
	('STU0008'),
	('STU0009'),
	('STU0010'),
	('STU0011'),
	('STU0012'),
	('STU0013'),
	('STU0014'),
	('STU0015'),
	('STU0016'),
	('STU0017'),
	('STU0018'),
	('STU0019'),
	('STU0020'),
	('STU0021'),
	('STU0022'),
	('STU0023'),
	('STU0024'),
	('STU0025'),
	('STU0026'),
	('STU0027'),
	('STU0028'),
	('STU0029'),
	('STU0030'),
	('STU0031'),
	('STU0032'),
	('STU0033'),
	('STU0034'),
	('STU0035'),
	('STU0036'),
	('STU0037'),
	('STU0038'),
	('STU0039'),
	('STU0040'),
	('TEA0001'),
	('TEA0002'),
	('TEA0003'),
	('TEA0004'),
	('TEA0005'),
	('TEA0006'),
	('TEA0007'),
	('TEA0008'),
	('TEA0009'),
	('TEA0010'),
	('MNG001')

GO
 CREATE TABLE LOPHOC
 (
	MaGiaoVien varchar (10) DEFAULT '',
	MaLop varchar (10) PRIMARY KEY,
	SoPhong varchar (50) NOT NULL,
	SoHocSinh int DEFAULT 20,
	MaKhoaHoc varchar(10),
	NgayBatDau datetime NOT NULL,
	NgayKetThuc datetime NOT NULL,
	NgayHocTrongTuan nvarchar(50) NOT NULL,
	MaCa varchar(5) NOT NULL,
	
	--CONSTRAINT FK_LPHOC_MaGV CHECK (MaGiaoVien = '' OR MaGiaoVien IN (SELECT MaGiaoVien FROM GIAOVIEN)),
	CONSTRAINT FK_LPHOC_MaKH FOREIGN KEY(MaKhoaHoc) REFERENCES KHOAHOC(MaKhoaHoc),
	CONSTRAINT FK_LPHOC_MaCa FOREIGN KEY(MaCa) REFERENCES CA(MaCa)
)
INSERT INTO LOPHOC VALUES 
    ('TEA0001', 'BS001', '203', '20', 'BS', '2023-04-03', '2023-05-03', 'T2-T4-T6', 'CA01'),
	('TEA0002', 'BS002', '202', '20', 'BS', '2023-06-20', '2023-07-29', 'T3-T5-T7', 'CA02'),
	('TEA0003', 'PF001', '101', '22', 'PF', '2023-05-22', '2023-06-23', 'T2-T4-T6', 'CA01'),
	('TEA0004', 'PF002', '102', '20', 'PF', '2023-05-23', '2023-06-24', 'T3-T5-T7', 'CA02'),
	('TEA0005', 'FO001', '103', '22', 'FO', '2023-06-19', '2023-07-21', 'T2-T4-T6', 'CA01'),
	('TEA0006', 'FO002', '201', '20', 'FO', '2023-06-20', '2023-07-22', 'T3-T5-T7', 'CA02'),
	('TEA0007', 'LVA001', '301', '22', 'LVA', '2023-06-19', '2023-07-21', 'T2-T4-T6', 'CA01'),
	('TEA0008', 'LVA002', '302', '20', 'LVA', '2023-06-20', '2023-07-22', 'T3-T5-T7', 'CA02'),
	('TEA0009', 'LVB001', '303', '22', 'LVB', '2023-06-19', '2023-07-21', 'T2-T4-T6', 'CA01'),
	('TEA0010', 'LVB002', '401', '20', 'LVB', '2023-06-20', '2023-07-22', 'T3-T5-T7', 'CA02');
GO
CREATE TABLE DANGNHAP
(
	MaNguoiDangNhap varchar(10) NOT NULL,
	TenDangNhap varchar (50) NOT NULL,
	MatKhau varchar (50) NOT NULL,
	Email varchar(50),
	ChucVu varchar (50) NOT NULL,
	CHECK (Email like '%@%.%'),
	CONSTRAINT FK_LOGI_IDUSER 	FOREIGN KEY (MaNguoiDangNhap) REFERENCES NGUOIDUNG(MaNguoiDung)
)

INSERT INTO DANGNHAP VALUES
    ('STU0001', 'khoaaa', '123', 'anhkhoa@gmail.com', 'HV'),
    ('STU0002', 'QuangHai', '123443', 'quanghai43@gmail.com', 'HV'),
    ('STU0003', 'LeVanDo', '354264', 'vando64@gmail.com', 'HV'),
    ('STU0004', 'DangVanLam', '600288', 'danglam88@gmail.com', 'HV'),
    ('STU0005', 'HuynhNhu', '138375', 'huynhnhu75@gmail.com', 'HV'),
    ('STU0006', 'DangThiLoan', '954085', 'thiloan85@gmail.com', 'HV'),
    ('STU0007', 'NguyenVanToan', '699271', 'vantoan71@gmail.com', 'HV'),
    ('STU0008', 'NguyenTienLinh', '787949', 'tienlinh49@gmail.com', 'HV'),
    ('STU0009', 'DoHungDung', '749785', 'hungdung85@gmail.com', 'HV'),
    ('STU0010', 'QueNgocHai', '426427', 'ngochai27@gmail.com', 'HV'),
    ('STU0011', 'NguyenHoangDuc', '743604', 'hoangduc04@gmail.com', 'HV'),
    ('STU0012', 'BuiTienDung', '618559', 'tiendung59@gmail.com', 'HV'),
    ('STU0013', 'NguyenVanQuỷet', '560443', 'vanquyet43@gmail.com', 'HV'),
    ('STU0014', 'VuVanThanh', '721170', 'vanthanh70@gmail.com', 'HV'),
    ('STU0015', 'DoanVanHau', '200270', 'vanhau70@gmail.com', 'HV'),
    ('STU0016', 'NguyenAnhDuc', '766993', 'anhduc93@gmail.com', 'HV'),
    ('STU0017', 'LuongXuanTruong', '103528', 'xuantruong28@gmail.com', 'HV'),
    ('STU0018', 'PhanVanDuc', '504414', 'vanduc14@gmail.com', 'HV'),
    ('STU0019', 'NguyenPhongHongDuy', '820535', 'hongduy35@gmail.com', 'HV'),
    ('STU0020', 'NguyenThiThanhNha', '135553', 'thanhnha53@gmail.com', 'HV'),
    ('STU0021', 'ChuongThiKieu', '443918', 'thikieu18@gmail.com', 'HV'),
    ('STU0022', 'NguyenThiTuyetDung', '529241', 'tuyetdung41@gmail.com', 'HV'),
    ('STU0023', 'PhamHaiYen', '367465', 'haiyen65@gmail.com', 'HV'),
    ('STU0024', 'BuiHoangVietAnh', '378749', 'vietanh49@gmail.com', 'HV'),
    ('STU0025', 'NguyenTrongHoang', '606789', 'tronghoang89@gmail.com', 'HV'),
    ('STU0026', 'HoTanTai', '519039', 'tantai39@gmail.com', 'HV'),
    ('STU0027', 'NguyenTuanAnh', '826934', 'tuannh34@gmail.com', 'HV'),
    ('STU0028', 'TranDinhTrong', '296685', 'dinhtrong85@gmail.com', 'HV'),
    ('STU0029', 'DoDuyManh', '722036', 'duymanh36@gmail.com', 'HV'),
    ('STU0030', 'NguyenThanhChung', '471432', 'thanhchung32@gmail.com', 'HV'),
    ('STU0031', 'BuiTanTruong', '629355', 'tantruong55@gmail.com', 'HV'),
    ('STU0032', 'HaDucChinh', '336622', 'ducchinh22@gmail.com', 'HV'),
    ('STU0033', 'NguyenVanA', '903769', 'nguyena@gmail.com', 'HV'),
    ('STU0034', 'TranMinhVuong', '112293', 'minhvuong93@gmail.com', 'HV'),
    ('STU0035', 'QuanVanChuan', '764468', 'vanchuan68@gmail.com', 'HV'),
    ('STU0036', 'HuynhTanSinh', '288577', 'tansinh77@gmail.com', 'HV'),
    ('STU0037', 'NguyenHaiLong', '294684', 'hailong84@gmail.com', 'HV'),
    ('STU0038', 'PhamXuanManh', '726761', 'xuanmanh61@gmail.com', 'HV'),
    ('STU0039', 'NguyenHaiHuy', '684994', 'haihuy94@gmail.com', 'HV'),
    ('STU0040', 'LeVanXuan', '163693', 'vanxuan93@gmail.com', 'HV'),
    ('TEA0001', 'TranVanA', '123', 'tranvana4@gmail.com', 'GV'),
    ('TEA0002', 'NguyenThiHong', '124789', 'honghao12@gmail.com', 'GV'),   
	('TEA0003', 'NguyenTienDung', '473789', 'dungman87@gmail.com', 'GV'),
    ('TEA0004', 'maii', '12344', 'mai85@gmail.com', 'GV'),
    ('TEA0005', 'binh', '123', 'binh92@gmail.com', 'GV'),
    ('TEA0006', 'nam', '1235', 'nam82@gmail.com', 'GV'),
    ('TEA0007', 'huong', '1235', 'huong95@gmail.com', 'GV'),
    ('TEA0008', 'tung', '123', 'tung87@gmail.com', 'GV'),
    ('TEA0009', 'anh', '123', 'anh98@gmail.com', 'GV'),
    ('TEA0010', 'longg', '123', 'longg84@gmail.com', 'GV'),
    ('MNG001', 'admin', 'admin', 'admin@gmail.com', 'QL');

GO
CREATE TABLE ThongBao
(
	MaNguoiGui varchar (10) NOT NULL,
	MaNguoiNhan varchar (10) NOT NULL,
	NoiDung varchar(1000) NOT NULL,
	CONSTRAINT FK_NOTI_USERSEND FOREIGN KEY (MaNguoiGui) REFERENCES NGUOIDUNG(MaNguoiDung),
	CONSTRAINT FK_NOTI_USERRECEIVE FOREIGN KEY (MaNguoiNhan) REFERENCES NGUOIDUNG(MaNguoiDung)
)
GO 
CREATE TABLE HocVienTrongLop
(
	MaLop varchar (10),
	MaHocVien varchar (10),
	PRIMARY KEY(MaLop, MaHocVien),
	CONSTRAINT FK_HVTL_MALP FOREIGN KEY (MaLop) REFERENCES LOPHOC(MaLop),
	CONSTRAINT FK_HVTL_MAHV FOREIGN KEY (MaHocVien) REFERENCES HOCVIEN(MaHocVien)
)
/*Học Viên lớp BS001*/
INSERT INTO HocVienTrongLop VALUES
	('BS001', 'STU0001'),
	('BS001', 'STU0002'),
	('BS001', 'STU0003'),
	('BS001', 'STU0011'),
	('BS001', 'STU0017'),
	('BS001', 'STU0021'),
	('BS001', 'STU0023'),
	('BS001', 'STU0025'),
	('BS001', 'STU0026'),
	('BS001', 'STU0037'),
	('BS001', 'STU0039');

/*Học viên lớp BS002*/
INSERT INTO HocVienTrongLop VALUES
	('BS002', 'STU0034'),
	('BS002', 'STU0010'),
	('BS002', 'STU0015'),
	('BS002', 'STU0040'),
	('BS002', 'STU0019'),
	('BS002', 'STU0028'),
	('BS002', 'STU0033'),
	('BS002', 'STU0024'),
	('BS002', 'STU0013'),
	('BS002', 'STU0032');


/*Học viên lớp PF001*/
INSERT INTO HocVienTrongLop VALUES
	('PF001', 'STU0004'),
	('PF001', 'STU0005'),
	('PF001', 'STU0007'),
	('PF001', 'STU0008'),
	('PF001', 'STU0014'),
	('PF001', 'STU0016'),
	('PF001', 'STU0018'),
	('PF001', 'STU0020'),
	('PF001', 'STU0022'),
	('PF001', 'STU0027');

GO
CREATE TABLE TEST
(
	MaBaiKiemTra varchar(30) PRIMARY KEY,
	MaLop varchar(10),
	ThoiGian varchar(100) NOT NULL,
	NgayKiemTra datetime NOT NULL,
	MoTa nvarchar(1000),
	CONSTRAINT FK_TEST_MALP FOREIGN KEY (MaLop) REFERENCES LOPHOC(MaLop)
)

-- Thêm dữ liệu TEST cho MaLop BS001
INSERT INTO TEST(MaBaiKiemTra, MaLop, ThoiGian, NgayKiemTra, MoTa) VALUES	
	('TEST001_BS001', 'BS001', '15 minutes', '2023-04-07', 'This is 15-minute test'),
	('TEST002_BS001', 'BS001', '15 minutes', '2023-04-21', 'This is 45-minute test'),
	('TESTFINAL_BS001', 'BS001', 'Final', '2023-05-05', 'This is final test');

-- Thêm dữ liệu cho MaLop BS002
INSERT INTO TEST(MaBaiKiemTra, MaLop, ThoiGian, NgayKiemTra, MoTa)
VALUES ('TEST001_BS002', 'BS002', '15 minutes', '2023-05-02', 'This is 15-minute test');

-- Thêm dữ liệu cho MaLop PF001
INSERT INTO TEST(MaBaiKiemTra, MaLop, ThoiGian, NgayKiemTra, MoTa)
VALUES ('TEST001_PF001', 'PF001', 'Final', '2023-05-02', 'This is 15-minute test');

GO
CREATE TABLE RESULT
(
	MaBaiKiemTra varchar(30),
	MaHocVien varchar(10),
	Diem float DEFAULT 0,
	CONSTRAINT FK_RESULT_IDTEST FOREIGN KEY (MaBaiKiemTra) REFERENCES TEST(MaBaiKiemTra),
	CONSTRAINT FK_RESULT_MAHV FOREIGN KEY (MaHocVien) REFERENCES HOCVIEN(MaHocVien)
)

/*Add HOCVIEN lớp BS001 cho mỗi bài kiểm tra*/
INSERT INTO RESULT VALUES
	('TEST001_BS001', 'STU0001', 5.0),
	('TEST001_BS001', 'STU0002', 1.0),
	('TEST001_BS001', 'STU0003', 2.0),
	('TEST001_BS001', 'STU0011', 2.0),
	('TEST001_BS001', 'STU0017', 2.0),
	('TEST001_BS001', 'STU0021', 1.5),
	('TEST001_BS001', 'STU0023', 1.5),
	('TEST001_BS001', 'STU0025', 2.0),
	('TEST001_BS001', 'STU0026', 3.0),
	('TEST001_BS001', 'STU0037', 2.0),
	('TEST001_BS001', 'STU0039', 4.0),
-----------------------------------
	('TEST002_BS001', 'STU0001', 4.5),
	('TEST002_BS001', 'STU0002', 3.0),
	('TEST002_BS001', 'STU0003', 2.0),
	('TEST002_BS001', 'STU0011', 2.0),
	('TEST002_BS001', 'STU0017', 4.5),
	('TEST002_BS001', 'STU0021', 2.0),
	('TEST002_BS001', 'STU0023', 1.0),
	('TEST002_BS001', 'STU0025', 2.0),
	('TEST002_BS001', 'STU0026', 3.0),
	('TEST002_BS001', 'STU0037', 2.0),
	('TEST002_BS001', 'STU0039', 2.0),
-----------------------------------
	('TESTFINAL_BS001', 'STU0001', 4.0),
	('TESTFINAL_BS001', 'STU0002', 2.5),
	('TESTFINAL_BS001', 'STU0003', 3.0),
	('TESTFINAL_BS001', 'STU0011', 2.0),
	('TESTFINAL_BS001', 'STU0017', 2.5),
	('TESTFINAL_BS001', 'STU0021', 3.0),
	('TESTFINAL_BS001', 'STU0023', 1.5),
	('TESTFINAL_BS001', 'STU0025', 2.0),
	('TESTFINAL_BS001', 'STU0026', 3.0),
	('TESTFINAL_BS001', 'STU0037', 2.0),
	('TESTFINAL_BS001', 'STU0039', 5.0)
/*Add HOCVIEN lớp BS002 cho mỗi bài kiểm tra*/
INSERT INTO RESULT(MaBaiKiemTra, MaHocVien) VALUES
	('TEST001_BS002', 'STU0034'),
	('TEST001_BS002', 'STU0010'),
	('TEST001_BS002', 'STU0015'),
	('TEST001_BS002', 'STU0040'),
	('TEST001_BS002', 'STU0019'),
	('TEST001_BS002', 'STU0028'),
	('TEST001_BS002', 'STU0033'),
	('TEST001_BS002', 'STU0024'),
	('TEST001_BS002', 'STU0013'),
	('TEST001_BS002', 'STU0032')
/*Add HOCVIEN lớp PF001 cho mỗi bài kiểm tra*/
INSERT INTO RESULT(MaBaiKiemTra, MaHocVien) VALUES
	('TEST001_PF001', 'STU0004'),
	('TEST001_PF001', 'STU0005'),
	('TEST001_PF001', 'STU0007'),
	('TEST001_PF001', 'STU0008'),
	('TEST001_PF001', 'STU0014'),
	('TEST001_PF001', 'STU0016'),
	('TEST001_PF001', 'STU0018'),
	('TEST001_PF001', 'STU0020'),
	('TEST001_PF001', 'STU0022'),
	('TEST001_PF001', 'STU0027')
GO
CREATE TABLE SATISTICS
(
	MaGiaoVien varchar(10) FOREIGN KEY REFERENCES GIAOVIEN(MaGiaoVien),
	SoLopDay int,
	SoHocVien int,
	TiLeHocVienLenLop float
)
GO
CREATE TABLE FINALRESULT
(
	MaLop varchar(10) FOREIGN KEY REFERENCES LOPHOC(MaLop),
	MaHocVien varchar(10) FOREIGN KEY REFERENCES HOCVIEN(MaHocVien),
	DiemQuaTrinh float,
	DiemCuoiKy float,
	DiemTongKet float,
	LenLop bit
)

INSERT INTO FINALRESULT VALUES 
	('BS001', 'STU0001', 5.0, 4.0, 4.5, 1),
	('BS001', 'STU0002', 2.0, 2.5, 2.5, 1),
	('BS001', 'STU0003', 2.0, 3.0, 2.5, 1),
	('BS001', 'STU0011', 2.0, 2.0, 2.0, 1),
	('BS001', 'STU0017', 3.5, 2.5, 3.0, 1),
	('BS001', 'STU0021', 2.0, 3.0, 2.5, 1),
	('BS001', 'STU0023', 1.5, 1.5, 1.5, 0),
	('BS001', 'STU0025', 2.0, 2.0, 2.0, 1),
	('BS001', 'STU0026', 3.0, 3.0, 3.0, 1),
	('BS001', 'STU0037', 2.0, 2.0, 2.0, 1),
	('BS001', 'STU0039', 3.0, 5.0, 4.0, 1);

GO
CREATE TRIGGER ADD_TEST_ON_HocVienTrongLop
ON HocVienTrongLop
AFTER INSERT
AS
BEGIN
	declare @MaHocVien varchar(10)
	select @MaHocVien = inserted.MaHocVien from inserted
    INSERT INTO RESULT (MaHocVien) VALUES (@MaHocVien)
END;
GO
CREATE OR ALTER TRIGGER ADD_GIAO_VIEN_ON_LOPHOC
ON LOPHOC
AFTER INSERT, UPDATE
AS
BEGIN
	DECLARE @MaGiaoVien varchar(10)
	SELECT @MaGiaoVien = inserted.MaGiaoVien FROM inserted
	
	IF(@MaGiaoVien != '' AND @MaGiaoVien NOT IN (SELECT MaGiaoVien FROM GIAOVIEN))
	BEGIN
		PRINT 'ID teacher is invalid';
		ROLLBACK TRAN
	END;
END
GO
CREATE TRIGGER ADD_HOCVIEN_ON_HOCVIENTRONGLOP
ON HocVienTrongLop
AFTER INSERT
AS
BEGIN
	INSERT INTO RESULT (MaBaiKiemTra, MaHocVien)
	SELECT t.MaBaiKiemTra, i.MaHocVien
	FROM TEST t, inserted i
	WHERE t.MaLop = i.MaLop
END;
GO
GO
CREATE TRIGGER DELETE_HOCVIEN_ON_HOCVIENTRONGLOP
ON HocVienTrongLop
AFTER DELETE
AS
BEGIN
	DELETE FROM RESULT
	WHERE MaHocVien IN (SELECT MaHocVien FROM deleted)
END;
GO
GO
CREATE TRIGGER ADD_TEST_ON_RESULT 
ON TEST
AFTER INSERT
AS
BEGIN
	INSERT INTO RESULT (MaBaiKiemTra, MaHocVien)
	SELECT i.MaBaiKiemTra, h.MaHocVien
	FROM INSERTED i
	JOIN HOCVIENTRONGLOP h ON i.MaLop = h.MaLop;
END;
GO
CREATE TRIGGER THEMNGUOIDUNG_GV
ON GIAOVIEN
after insert
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = MaGiaoVien from GIAOVIEN
	insert into NGUOIDUNG values (@manguoidung)
end;
GO
CREATE TRIGGER SUANGUOIDUNG_GV
ON GIAOVIEN
after update
as
begin 
	declare @OLD_manguoidung varchar (10)
	declare @NEW_manguoidung varchar (10)
	select @OLD_manguoidung = deleted.MaGiaoVien from deleted
	select @NEW_manguoidung = inserted.MaGiaoVien from inserted
	update NGUOIDUNG set MaNguoiDung = @NEW_manguoidung where MaNguoiDung = @OLD_manguoidung 
end;
GO
CREATE TRIGGER XOANGUOIDUNG_GV
ON GIAOVIEN
after delete
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = deleted.MaGiaoVien from deleted
	delete from NGUOIDUNG where MaNguoiDung = @manguoidung
end;

GO
CREATE TRIGGER THEMNGUOIDUNG_HV
ON HOCVIEN
after insert
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = MaHocVien from HOCVIEN
	insert into NGUOIDUNG values (@manguoidung)
end;
GO
CREATE TRIGGER XOANGUOIDUNG_HV
ON HOCVIEN
after delete
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = deleted.MaHocVien from deleted
	delete from NGUOIDUNG where MaNguoiDung = @manguoidung
end;
GO
CREATE TRIGGER SUANGUOIDUNG_HV
ON HOCVIEN
after update
as
begin 
	declare @OLD_manguoidung varchar (10)
	declare @NEW_manguoidung varchar (10)
	select @OLD_manguoidung = deleted.MaHocVien from deleted
	select @NEW_manguoidung = inserted.MaHocVien from inserted
	update NGUOIDUNG set MaNguoiDung = @NEW_manguoidung where MaNguoiDung = @OLD_manguoidung 
end;

GO
CREATE TRIGGER THEMNGUOIDUNG_NGQL
ON NGQUANLY
after insert
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = MaNguoiQuanLy from NGQUANLY
	insert into NGUOIDUNG values (@manguoidung)
end;
GO
CREATE TRIGGER XOANGUOIDUNG_NGQL
ON NGQUANLY
after delete
as
begin 
	declare @manguoidung varchar (10)
	select @manguoidung = deleted.MaNguoiQuanLy from deleted
	delete from NGUOIDUNG where MaNguoiDung = @manguoidung
end;
GO
CREATE TRIGGER SUANGUOIDUNG_NGQL
ON NGQUANLY
after update
as
begin 
	declare @OLD_manguoidung varchar (10)
	declare @NEW_manguoidung varchar (10)
	select @OLD_manguoidung = deleted.MaNguoiQuanLy from deleted
	select @NEW_manguoidung = inserted.MaNguoiQuanLy from inserted
	update NGUOIDUNG set MaNguoiDung = @NEW_manguoidung where MaNguoiDung = @OLD_manguoidung 
end;

GO
CREATE or ALTER FUNCTION fn_LayDanhSachHocVienTrongLop(@MaLop varchar (10))
returns table
AS
return(
	SELECT *
	FROM HOCVIEN
	WHERE MaHocVien IN (SELECT MaHocVien
						FROM HocVienTrongLop
						WHERE @MaLop = MaLop))
go

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_XoaLopHoc')
BEGIN
    DROP PROCEDURE sp_XoaLopHoc;
END
GO

CREATE PROCEDURE sp_XoaLopHoc @MaLop varchar(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete rows from child table
    DELETE FROM HocVienTrongLop
    WHERE MaLop = @MaLop;

    DELETE FROM RESULT
    WHERE MaBaiKiemTra IN (SELECT MaBaiKiemTra FROM TEST WHERE MaLop = @MaLop);

    DELETE FROM TEST
    WHERE MaLop = @MaLop;

    -- Delete row from LOPHOC table
    DELETE FROM LOPHOC
    WHERE MaLop = @MaLop;
END
GO

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'sp_XoaBaiKiemTra')
BEGIN
    DROP PROCEDURE sp_XoaBaiKiemTra;
END
GO

CREATE PROCEDURE sp_XoaBaiKiemTra @MaBaiKiemTra varchar(30)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete rows from child table
    DELETE FROM RESULT
    WHERE MaBaiKiemTra = @MaBaiKiemTra;

    -- Delete row from TEST table
    DELETE FROM TEST
    WHERE MaBaiKiemTra = @MaBaiKiemTra;
END
GO


/*
go
CREATE or ALTER PROCEDURE sp_XoaLopHoc @MaLop varchar(10)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete rows from child table
    DELETE FROM HocVienTrongLop
    WHERE MaLop = @MaLop;

	DELETE FROM RESULT
	WHERE MaBaiKiemTra IN (SELECT MaBaiKiemTra FROM TEST WHERE MaLop = @MaLop)

	dELETE FROM TEST
    WHERE MaLop = @MaLop;

    -- Delete row from LOPHOC table
    DELETE FROM LOPHOC
    WHERE MaLop = @MaLop;
END

GO
CREATE or ALTER PROCEDURE sp_XoaBaiKiem @MaBaiKiemTra varchar(30)
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete rows from child table
    DELETE FROM RESULT
    WHERE MaBaiKiemTra = @MaBaiKiemTra;

    -- Delete row from LOPHOC table
    DELETE FROM TEST
	WHERE MaBaiKiemTra = @MaBaiKiemTra;
END

/*																

DROP TABLE LOPHOC;
DROP TABLE DANGNHAP;
DROP TABLE NGQUANLY;
DROP TABLE HOCVIEN;
DROP TABLE ThongBao;
DROP TABLE KHOAHOC;
DROP TABLE CA;
DROP TABLE GIAOVIEN;
DROP TABLE HocVienTrongLop;
DROP TABLE NGUOIDUNG;
DROP TABLE TEST;
DROP TABLE RESULT;
DROP TABLE SATISTICS;
DROP TABLE FINALRESULT;

*/

