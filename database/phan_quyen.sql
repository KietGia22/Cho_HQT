ALTER PLUGGABLE DATABASE sach OPEN;

--CONNECT sys/Yukino103*@localhost:1521/sach AS SYSDBA

ALTER SESSION SET CONTAINER = sach;

CREATE USER main_user IDENTIFIED BY pass;

CREATE USER qly IDENTIFIED BY pass;

CREATE USER nv IDENTIFIED BY pass;

CREATE USER nvk IDENTIFIED BY pass;

CREATE USER kt IDENTIFIED BY pass;

GRANT DBA TO main_user;

GRANT CREATE SESSION, SELECT ANY SEQUENCE TO qly;

GRANT CREATE SESSION TO nv;

GRANT CREATE SESSION TO nvk;

GRANT CREATE SESSION TO kt;

--CONNECT main_user/pass@localhost:1521/sach
--quanly
GRANT INSERT, DELETE, UPDATE, SELECT ON TAIKHOAN TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON KHACHHANG TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON THELOAI TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON NHAPHANPHOI TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON HOADON TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON CTHD TO qly;

 GRANT INSERT, DELETE, UPDATE, SELECT ON PHIEUNHAPSACH TO qly;

 GRANT INSERT, DELETE, UPDATE, SELECT ON CTPNSACH TO qly;

GRANT SELECT ON CHAMCONG TO qly;

GRANT EXECUTE ON SUAKETTHUCCCong TO qly;

GRANT EXECUTE ON ThemCCONG TO qly;

GRANT INSERT, DELETE, UPDATE, SELECT ON LUONG TO qly;

GRANT EXECUTE ANY PROCEDURE TO qly;

--CONNECT main_user/pass@localhost:1521/sach
--nhan vien

GRANT INSERT, DELETE, UPDATE, SELECT ON KHACHHANG TO nv;

GRANT INSERT, DELETE, UPDATE, SELECT ON HOADON TO nv;

GRANT INSERT, DELETE, UPDATE, SELECT ON CTHD TO nv;

GRANT EXECUTE ON ThemCCONG TO nv;

GRANT EXECUTE ON SUAKETTHUCCCong TO nv;

 GRANT INSERT, DELETE, UPDATE, SELECT ON SACH TO nv;
 

--CONNECT main_user/pass@localhost:1521/sach
 --nhan vien kho
 
GRANT INSERT, DELETE, UPDATE, SELECT ON SACH TO nvk;

GRANT INSERT, DELETE, UPDATE, SELECT ON PHIEUNHAPSACH TO nvk;

GRANT INSERT, DELETE, UPDATE, SELECT ON CTPNSACH TO nvk;

GRANT EXECUTE ON ThemCCONG TO nvk;

GRANT EXECUTE ON SUAKETTHUCCCong TO nvk;


--CONNECT main_user/pass@localhost:1521/sach
--ke toan

GRANT EXECUTE ON ThemCCONG TO kt;

GRANT EXECUTE ON SUAKETTHUCCCong TO kt;

GRANT INSERT, DELETE, UPDATE, SELECT ON LUONG TO kt;

GRANT INSERT, DELETE, UPDATE, SELECT ON CHAMCONG TO kt;


---cap cac quyen
GRANT EXECUTE ON GET_DANG_NHAP TO nv;

GRANT EXECUTE ON GET_DANG_NHAP TO nvk;

GRANT EXECUTE ON GET_DANG_NHAP TO kt;

--nhanvien
GRANT EXECUTE ON ThemKH TO nv;

GRANT EXECUTE ON SuaKH TO nv;

GRANT EXECUTE ON XoaKH TO nv;

GRANT EXECUTE ON ThemSACH TO nv;

GRANT EXECUTE ON SuaSACH TO nv;

GRANT EXECUTE ON XoaSACH TO nv;

GRANT EXECUTE ON ThemHD TO nv;

GRANT EXECUTE ON ThemCTHD TO nv;

GRANT EXECUTE ON GETTCKH TO nv;

GRANT EXECUTE ON GETKHTHEOMA TO nv;

GRANT EXECUTE ON GETKHTHEOTEN TO nv;

GRANT EXECUTE ON GETTCSACH TO nv;

GRANT EXECUTE ON GETSACHTHEOMA TO nv;

GRANT EXECUTE ON GETSACHTHEOTEN TO nv;

GRANT EXECUTE ON GETSACHTHEOHD TO nv;

GRANT EXECUTE ON GETTCHD TO nv;

GRANT EXECUTE ON GETHDTHEOMA TO nv;

GRANT EXECUTE ON GETTHANGHD TO nv;

GRANT EXECUTE ON GETMaHD TO nv;

--nhanvienkho
GRANT EXECUTE ON XoaSACH TO nvk;

GRANT EXECUTE ON SuaSACH TO nvk;

 GRANT EXECUTE ON ThemSACH TO nvk;
 
 GRANT EXECUTE ON ThemCTPNSACH TO nvk;
 
 GRANT EXECUTE ON GETTCSACH TO nvK;

GRANT EXECUTE ON GETSACHTHEOMA TO nvK;

GRANT EXECUTE ON GETSACHTHEOTEN TO nvK;

GRANT EXECUTE ON GETSACHTHEOTEN TO nvk;

GRANT EXECUTE ON GETSACHTHEOPNS TO nvk;

GRANT EXECUTE ON GETTCPNS TO nvk;

GRANT EXECUTE ON GETPNSTHEOMA TO nvk;

GRANT EXECUTE ON GETPNSTHEONV TO nvk;

GRANT EXECUTE ON GETPNSTHEONPP TO nvk;

GRANT EXECUTE ON GETTHANGPNS TO nvk;

GRANT EXECUTE ON GETNAMPNS TO nvk;

GRANT EXECUTE ON GETMaPNS TO nvk;

---ke toan
GRANT EXECUTE ON GETTCLUONG TO kt;

GRANT EXECUTE ON GETLUONGTHEONV TO kt;

 GRANT EXECUTE ON GETCHAMCONG TO kt;
 
 --bo sung
GRANT EXECUTE ON GETTLTHEOMA TO nv;

GRANT EXECUTE ON GETTLTHEOMA TO nvk;

GRANT EXECUTE ON GETTCTL TO nv;

GRANT EXECUTE ON GETTCTL TO nvk;

GRANT EXECUTE ON GETTLTHEOTEN TO nvk;

GRANT EXECUTE ON GETTLTHEOTEN TO nv;

GRANT EXECUTE ON GET_TL_CHO_SACH TO nv;

GRANT EXECUTE ON GET_TL_CHO_SACH TO nvk;