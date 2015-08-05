--Thuoc dang can
SELECT a.* 
FROM HUFS_KHAMBENH_DETAIL a
INNER JOIN HUFS_KHAMBENH_HEADER b ON a.MaKhamBenh = b.MaKhamBenh
WHERE a.MaThuoc = 'ME0000000002' AND b.PhongKhamBenh = 'Phòng Khám Khu B' AND a.MaKhamBenh = 'MKB000000000050'
--Thuoc trong kho
SELECT a.*
FROM HUFS_NHAPKHO_DETAIL a
INNER JOIN HUFS_NHAPKHO_HEADER b ON a.MaNhapKho = b.MaNhapKho
WHERE b.PhongKhamKho = 'Phòng Khám Khu B' AND a.MaThuoc = 'ME0000000002'
order by a.HanSuDung
--Thuoc dang doi giao dich
SELECT a.* 
FROM HUFS_TRANSACTION a
INNER JOIN HUFS_KHAMBENH_HEADER b ON a.MaKhamBenh = b.MaKhamBenh
WHERE a.MaThuoc = 'ME0000000002' AND a.XuatKho = 1 AND b.PhongKhamBenh = 'Phòng Khám Khu B'
--DROP TABLE #ThuocSanCo
--Thuoc con lai
SELECT  T1.LoThuoc,T1.MaThuoc,CAST(T1.HanSuDung AS DATE) AS HanSuDung,T1.SoLuong,SUM(T2.SoLuong) AS SoLuongDangDung, (T1.SoLuong - SUM(T2.SoLuong)) AS SoLuongConLai, 0 AS IsProcess INTO #ThuocSanCo
FROM (SELECT a.*
FROM HUFS_NHAPKHO_DETAIL a
INNER JOIN HUFS_NHAPKHO_HEADER b ON a.MaNhapKho = b.MaNhapKho
WHERE b.PhongKhamKho = 'Phòng Khám Khu B' AND a.MaThuoc = 'ME0000000002'
) T1
INNER JOIN 
(SELECT a.* 
FROM HUFS_TRANSACTION a
INNER JOIN HUFS_KHAMBENH_HEADER b ON a.MaKhamBenh = b.MaKhamBenh
WHERE a.MaThuoc = 'ME0000000002' AND a.XuatKho = 1 AND b.PhongKhamBenh = 'Phòng Khám Khu B') T2
ON T1.LoThuoc = T2.MaLoThuoc AND T1.MaThuoc = T2.MaThuoc
GROUP BY T1.LoThuoc,T1.MaThuoc,T1.HanSuDung,T1.SoLuong
ORDER BY T1.HanSuDung


SELECT * FROM #ThuocSanCo WHERE SoLuongConLai > 0

DECLARE @i INT = 0
DECLARE @MaLoThuoci NVARCHAR(50)
DECLARE @SoLuongThuoci NVARCHAR(50)
DECLARE @SoLoThuoc float
DECLARE @ThuocDangCan INT = 150
DECLARE @HanSuDungi DATETIME
SELECT @SoLoThuoc = COUNT(*) FROM #ThuocSanCo
WHILE(@i < @SoLoThuoc)
BEGIN
   SELECT TOP(1) @MaLoThuoci = LoThuoc,@SoLuongThuoci = SoLuongConLai,@HanSuDungi = HanSuDung
   FROM #ThuocSanCo
   WHERE IsProcess = 0 AND SoLuongConLai > 0
   --PRINT @MaLoThuoci + '-' + CAST(@SoLuongThuoci AS VARCHAR(20)) +'-'+ CONVERT(varchar(8), @HanSuDungi, 112)
   --PRINT @MaLoThuoci
   
   IF @SoLuongThuoci >= @ThuocDangCan
   BEGIN
       PRINT 'CASE1'
	   PRINT @MaLoThuoci + '-' + CAST(@ThuocDangCan AS VARCHAR(20)) +'-'+ CONVERT(varchar(8), @HanSuDungi, 112)
	   --Insert temp table
	   
	   BREAK
   END
   ELSE
   BEGIN
	  PRINT 'CASE2'
	  DECLARE @SoLuongTrungGianConLai INT = 0
	  SET @SoLuongTrungGianConLai = @ThuocDangCan - @SoLuongThuoci
	  PRINT @MaLoThuoci + '-' + CAST(@SoLuongThuoci AS VARCHAR(20)) +'-'+ CONVERT(varchar(8), @HanSuDungi, 112)
	  --Insert temp table
	  SET @ThuocDangCan = @SoLuongTrungGianConLai
	  
	  UPDATE #ThuocSanCo
	  SET IsProcess = 1
	  WHERE LoThuoc = @MaLoThuoci
   END
   SET @i = @i + 1
END
/*
20150603220535
20150604210207
UPDATE #ThuocSanCo
	  SET IsProcess = 0
*/







