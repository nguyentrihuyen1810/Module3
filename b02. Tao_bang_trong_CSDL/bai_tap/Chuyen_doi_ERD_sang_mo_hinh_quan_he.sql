CREATE SCHEMA quanlyvattu;
USE
quanlyvattu;

CREATE TABLE PHIEUXUAT
(
    SoPX     INT PRIMARY KEY,
    NgayXuat DATETIME
);

CREATE TABLE VATTU
(
    MaVTU  INT PRIMARY KEY,
    TenVTU NVARCHAR(50)
);

CREATE TABLE PHIEUNHAP
(
    SoPN     INT PRIMARY KEY,
    NgayNhap DATETIME
);

CREATE TABLE CTPHIEUXUAT
(
    SoPX   INT,
    MaVTU  INT,
    DGXuat DOUBLE,
    SLXuat INT,
    PRIMARY KEY (SoPX, MaVTU),
    FOREIGN KEY (SoPX) REFERENCES PHIEUXUAT (SoPX),
    FOREIGN KEY (MaVTU) REFERENCES VATTU (MaVTU)
);

CREATE TABLE CTPHIEUNHAP
(
    SoPN   INT,
    MaVTU  INT,
    DGNhap DOUBLE,
    SLNhap INT,
    PRIMARY KEY (SoPN, MaVTU),
    FOREIGN KEY (SoPN) REFERENCES PHIEUNHAP (SoPN),
    FOREIGN KEY (MaVTU) REFERENCES VATTU (MaVTU)
);

CREATE TABLE DONDH
(
    SoDH   INT PRIMARY KEY,
    NgayDH DATETIME
);

CREATE TABLE NHACC
(
    MaNCC  INT PRIMARY KEY,
    TenNCC NVARCHAR(50),
    Diachi NVARCHAR(50),
    SDT    VARCHAR(10)
);

CREATE TABLE CTDDHANG
(
    SoDH  INT,
    MaVTU INT,
    PRIMARY KEY (SoDH, MaVTU),
    FOREIGN KEY (SoDH) REFERENCES DONDH (SoDH),
    FOREIGN KEY (MaVTU) REFERENCES VATTU (MaVTU)
);

CREATE TABLE CCAP
(
    MaNCC INT,
    SoDH  INT,
    PRIMARY KEY (MaNCC, SoDH),
    FOREIGN KEY (MaNCC) REFERENCES NHACC (MaNCC),
    FOREIGN KEY (SoDH) REFERENCES DONDH (SoDH)
);