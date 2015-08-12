

/****** Object:  StoredProcedure [dbo].[p_HUFS_searchThongTinBenhNhan]    Script Date: 08/12/2015 22:07:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_searchThongTinBenhNhan]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_searchThongTinBenhNhan]
GO


/****** Object:  StoredProcedure [dbo].[p_HUFS_searchThongTinBenhNhan]    Script Date: 08/12/2015 22:07:22 ******/
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
declare @query nvarchar(max) = ' ' 


SET @query = @query + ' 
SELECT
	EmployeeID,
	FullName,
	gt.Name AS GioiTinh,
	MaBHYT,
	(NgayThangNamSinh) AS NamSinh,
	KhuVuc,
	DepartmentID AS BoPhan,
	TenBoPhan
FROM [HUFS_EMPLOYEE] he
LEFT JOIN [HUFS_BOPHAN] hb
	ON he.DepartmentID = hb.MaBoPhan
LEFT JOIN HUFS_GIOITINH gt 
    ON he.GioiTinh = gt.Id
WHERE 1=1 '

IF @MaBenhNhan <> '' 
	BEGIN 
		SET @query = @query + ' AND [EmployeeID] LIKE ''%' +@MaBenhNhan + '%'''
	END

IF @TenBenhNhan <> '' 
	BEGIN 
		SET @query = @query + '	AND FullName LIKE N''%' +@TenBenhNhan + '%'''
END

SET ANSI_WARNINGS OFF
EXEC sp_executesql @Query
SET ANSI_WARNINGS ON


END

GO


