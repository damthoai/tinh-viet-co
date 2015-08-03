USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienToAddNVQL]    Script Date: 03/09/2015 23:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*********************  Stored Procedure: p_GetNhanVienToAddNVQL ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienToAddNVQL

*********************************************************************************************/

ALTER PROCEDURE [dbo].[p_GetNhanVienToAddNVQL]

	@LName nvarchar(160) = '',
	@FName nvarchar(160) = '',
	@MaNVUnilever int = 0,
	@LoaiNV char(1) = '1',
	@CardNo nvarchar(160) = ''
	
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @LName = REPLACE(REPLACE(@LName, '''', ''''''), '*', '%')

SET @FName = REPLACE(REPLACE(@FName, '''', ''''''), '*', '%')

SET @MaNVUnilever = REPLACE(REPLACE(@MaNVUnilever, '''', ''''''), '*', '%')

SET @CardNo = REPLACE(REPLACE(@CardNo, '''', ''''''), '*', '%')

SET @strQuery = @strQuery + N' 
SELECT
	N''Tạo'' AS  tao,
	0 AS [Check],
	nv.SysId AS MaNhanVien,
	nv.FNAME AS [HoNV],
	nv.LNAME AS [Ten],
	nv.MaNVUnilever,
	nv.CardNo
FROM tb_NhanVien nv
LEFT JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId
	AND tvn.Id_Prowatch = nv.ID_Prowatch
	AND tvn.Is_Active = 1
LEFT JOIN tb_NhanVienQuanLy nvql
	ON nvql.MaNhanVien = nv.SysId
	AND nvql.Is_Active = 1
WHERE nv.Is_Active = 1
AND nv.IsDataCC = 1
AND tvn.SysId IS NULL
AND nvql.SysId is NULL '
 
IF (@LName <> '' and @LName <> '%%' and @LName <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.LNAME like N''' + @LName + ''''
END
IF (@FName <> '' and @FName <> '%%' and @FName <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.FNAME like N''' + @FName + ''''
END

IF @MaNVUnilever <> 0
 BeGIN
	SET @strQuery = @strQuery + ' AND  nv.MaNVUnilever like ''' + CAST(@MaNVUnilever AS char(10))  + ''''
 END

IF (@LoaiNV <> '' and @LoaiNV <> '%%' and @LoaiNV <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.MaLoaiNhanVien = ''' + @LoaiNV +''''
END

IF (@CardNo <> '' and @CardNo <> '%%' and @CardNo <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.CardNo like N''' + @CardNo +''''
END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END

