USE [DMSPOP]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_searchThongTinBenhNhan]    Script Date: 05/29/2015 16:14:34 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_searchThongTinBenhNhan]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_searchThongTinBenhNhan]
GO

USE [DMSPOP]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_searchThongTinBenhNhan]    Script Date: 05/29/2015 16:14:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--exec [p_HUFS_searchThongTinBenhNhan]  @MaBenhNhan = '000001'
CREATE PROCEDURE [dbo].[p_HUFS_searchThongTinBenhNhan]  
 @MaBenhNhan   VARCHAR(50),
 @TenBenhNhan  VARCHAR(50) = ''
AS  
BEGIN   
	/****** Script for SelectTopNRows command from SSMS  ******/
	  SELECT   EmployeeID,FullName,GioiTinh,MaBHYT,YEAR(NgayThangNamSinh) AS NamSinh,KhuVuc,DepartmentID AS BoPhan,TenBoPhan
	  FROM [HUFS_EMPLOYEE] he
	       LEFT JOIN [HUFS_BOPHAN] hb ON he.DepartmentID = hb.MaBoPhan
	  WHERE ([EmployeeID] = @MaBenhNhan) OR ((@MaBenhNhan IS NULL OR @MaBenhNhan = '') AND FullName LIKE '%'+IsNull(@TenBenhNhan,FullName)+'%')
	  
END  

  

GO


