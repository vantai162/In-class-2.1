USE QuanLyBanHang
GO

--1--
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'

--2--
SELECT MASP, TENSP
FROM SANPHAM
WHERE DVT = 'cay' or DVT = 'quyen'

--3--
SELECT MASP, TENSP
FROM SANPHAM
WHERE MASP LIKE 'B%01'

--4--
SELECT MASP, TENSP
FROM SANPHAM
WHERE (NUOCSX = 'Trung Quoc' AND (GIA BETWEEN 30000 AND 40000))

--5--
SELECT MASP, TENSP
FROM SANPHAM
WHERE ((NUOCSX = 'Trung Quoc' OR NUOCSX = 'Thai Lan') AND (GIA BETWEEN 30000 AND 40000))

--6--
SELECT SOHD, TRIGIA
FROM HOADON
WHERE NGHD = '2007-01-01' OR NGHD = '2007-02-01'

--7--
SELECT SOHD, TRIGIA
FROM HOADON
WHERE NGHD BETWEEN '2007-01-01' AND '2007-01-31'
ORDER BY NGHD ASC, TRIGIA DESC;

--8--
SELECT KHACHHANG.MAKH, KHACHHANG.HOTEN
FROM KHACHHANG
JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
WHERE HOADON.NGHD = '2007-01-01'


--9--
SELECT HOADON.SOHD, HOADON.TRIGIA
FROM HOADON
JOIN NHANVIEN ON HOADON.MANV = NHANVIEN.MANV
WHERE NHANVIEN.HOTEN = 'Nguyen Van B' 
  AND HOADON.NGHD = '2006-10-28'

--10--
SELECT HOADON.SOHD, HOADON.TRIGIA
FROM HOADON
JOIN NHANVIEN ON HOADON.MANV = NHANVIEN.MANV
WHERE NHANVIEN.HOTEN = 'Nguyen Van A' 
  AND HOADON.NGHD BETWEEN '2006-10-1' AND '2006-10-31'

--11--
SELECT SOHD
FROM CTHD
WHERE MASP = 'BB01' OR MASP = 'BB02'