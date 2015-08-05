
/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchXuatKho]    Script Date: 06/03/2015 22:11:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_SearchXuatKho]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_SearchXuatKho]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_SearchXuatKho]    Script Date: 06/03/2015 22:11:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



--exec [p_HUFS_SearchXuatKho] ''
CREATE PROCEDURE [dbo].[p_HUFS_SearchXuatKho]   
 @mathuoc     VARCHAR(50)
AS  
BEGIN   
	/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  M.MedicineName AS TenThuoc
      ,M.MaThuocYTe AS [MaThuoc]
      ,T.[SoLuong]
      ,[XuatKho]
      ,[MaLoThuoc]
      --,Convert(VARCHAR(10), D.[HanSuDung], 101) AS HanSuDung,
      ,CONVERT(VARCHAR(10),CONVERT(datetime, D.[HanSuDung], 103),105) AS HanSuDung,
      H.PhongKhamKho,
      T.MaKhamBenh,
      T.Status
  FROM [HUFS_TRANSACTION] T 
  INNER JOIN HUFS_MEDICINE M ON T.MaThuoc = M.MedicineID
  INNER JOIN [HUFS_NHAPKHO_DETAIL] D ON T.MaLoThuoc = D.[LoThuoc] AND T.HanSuDung = D.HanSuDung
  INNER JOIN [HUFS_NHAPKHO_HEADER] H ON D.MaNhapKho = H.MaNhapKho
  WHERE T.status =1
END  



GO


