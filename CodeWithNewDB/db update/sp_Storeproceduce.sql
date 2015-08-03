USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatch]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetTSFromProwatch]
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatch_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetTSFromProwatch_ChamCongLichLamViecL1]
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatchL0]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetTSFromProwatchL0]
GO
/****** Object:  StoredProcedure [dbo].[p_GetUserAvailible]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetUserAvailible]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertNhanVien]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_InsertNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[p_GetCaLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetCaLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_GetDauDocThe]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetDauDocThe]
GO
/****** Object:  StoredProcedure [dbo].[p_GetEmailNhanVien]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetEmailNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[p_GetEmailOfLeverApprove]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetEmailOfLeverApprove]
GO
/****** Object:  StoredProcedure [dbo].[p_LuuNhanVienUser]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_LuuNhanVienUser]
GO
/****** Object:  StoredProcedure [dbo].[p_NgungHDNVUser]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_NgungHDNVUser]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienProWatch]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNhanVienProWatch]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNhanVienQuanLy]
GO
/****** Object:  StoredProcedure [dbo].[p_Removed_CCLichLamViecManual]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Removed_CCLichLamViecManual]
GO
/****** Object:  StoredProcedure [dbo].[p_RemoveNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_RemoveNhanVienQuanLy]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNgayNghi]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienUser]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNhanVienUser]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNV_User]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNV_User]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_UpdateNhanVienCC]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateShiftForTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_UpdateShiftForTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_Select_Param]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Select_Param]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoLichLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiChuNhat]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiChuNhat]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiPhep]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiPhepChiTiet]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiPhepChiTiet]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiTaiNan]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiTaiNan]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiThaiSan]
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiTrongNam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_TaoNgayNghiTrongNam]
GO
/****** Object:  StoredProcedure [dbo].[p_Update_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Update_ChamCongLichLamViecL1]
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateIsOffForNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_UpdateIsOffForNgayNghi]
GO
/****** Object:  StoredProcedure [dbo].[p_UnActiveNhanVienQuanLyNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_UnActiveNhanVienQuanLyNhom]
GO
/****** Object:  StoredProcedure [dbo].[p_UnActiveTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_UnActiveTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_XemLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_XemLichLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_XoaLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_XoaLichLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL0InL1]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvL0InL1]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL1InL2]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvL1InL2]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL2InL3]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvL2InL3]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL3InL4]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvL3InL4]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel0Available]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvQuanlyLevel0Available]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel1Available]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvQuanlyLevel1Available]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel2Available]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvQuanlyLevel2Available]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel3Available]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvQuanlyLevel3Available]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel4]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNvQuanlyLevel4]
GO
/****** Object:  StoredProcedure [dbo].[p_GetShiftForTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetShiftForTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_GetThanhVienNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetThanhVienNhom]
GO
/****** Object:  StoredProcedure [dbo].[P_GetThanhVienNhomAvailable]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[P_GetThanhVienNhomAvailable]
GO
/****** Object:  StoredProcedure [dbo].[p_GetThongTinNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetThongTinNhom]
GO
/****** Object:  StoredProcedure [dbo].[p_GetTruongNhomForTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetTruongNhomForTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_CCLichLamViecManual]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_CCLichLamViecManual]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL0]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL0]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL1]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL2]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL2]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL3]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL3]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL4]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL4]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_NhanVien]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_NhomByTruongNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_NhomByTruongNhom]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_TruongNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Get_TruongNhom]
GO
/****** Object:  StoredProcedure [dbo].[p_GetAllTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetAllTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienByName]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienByName]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienCC]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienCCByName]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienCCByName]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienChamCong]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienChamCong]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienNghiPhep]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchNhanVienNghiThaiSan]
GO
/****** Object:  StoredProcedure [dbo].[p_SearchTeam]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_SearchTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_RemoveNvToGroup]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_RemoveNvToGroup]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienToAddNVQL]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNhanVienToAddNVQL]
GO
/****** Object:  StoredProcedure [dbo].[p_NgungSuDungNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_NgungSuDungNgayNghi]
GO
/****** Object:  StoredProcedure [dbo].[p_Reject_ChamCongLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_Reject_ChamCongLichLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNgayNghiPhep]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiPhepInChamCong]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNgayNghiPhepInChamCong]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiTaiNan]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNgayNghiTaiNan]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNgayNghiThaiSan]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_GetNhanVienCC]
GO
/****** Object:  StoredProcedure [dbo].[p_InsertNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_InsertNhanVienQuanLy]
GO
/****** Object:  StoredProcedure [dbo].[p_KiemTraCaLamViecNhom]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_KiemTraCaLamViecNhom]
GO
/****** Object:  StoredProcedure [dbo].[p_KiemTraLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
DROP PROCEDURE [dbo].[p_KiemTraLichLamViec]
GO
/****** Object:  StoredProcedure [dbo].[p_KiemTraLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_KiemTraLichLamViec]
	@NhomId int = 0,
	@TruongNhomId int = 0,
	@TuanLamViec char(2) = '',
	@IsOutsource char(1) = '0'
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + '
SELECT TOP 1
	*
FROM tb_CC_ChamCong_LichLamviec
WHERE [TruongNhom-ID] = ' + CAST(@TruongNhomId AS char(10)) + '
AND Tuan = ''' + @TuanLamViec + '''
AND [Nhom-Id] = ''' + CAST(@NhomId AS char(10))+ '''
AND IsOutSource = ' +@IsOutsource+ '
AND Is_Active = 1 ' 

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_KiemTraCaLamViecNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_KiemTraCaLamViecNhom] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_KiemTraCaLamViecNhom]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_KiemTraCaLamViecNhom]
	@NhomId int = 0,
	@TuanLamViec char(2) = ''
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + '
SELECT TOP 1 [SysId]
      ,[MaNhom]
      ,[NgayVao]
      ,[MaCaHeThong]
      ,[MaCaLaViec]
      ,[DauDocTheVaoId]
      ,[DauDocTheRaId]
      ,[Tuan]
      ,[ThuTrongTuan]
      ,[IsOff]
      ,[IsOff_Caution]
      ,[IsOT]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
      ,[Is_Active]
  FROM [dbo].[tb_CaLamViecNhom] clvn
  where	 clvn.MaNhom = ' + CAST(@NhomId AS char(10))+ '
AND clvn.Tuan = ' +@TuanLamViec

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_InsertNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienQuanLy ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienQuanLy

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_InsertNhanVienQuanLy]
 @UserId varchar(10) = '',
 @strSysId nvarchar(max) = ''
 
 
AS

BEGIN
Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + N'
INSERT INTO [dbo].[tb_NhanVienQuanLy]
           ([MaNhanVien]
           ,[Id_Prowatch]
           ,[Ten]
           ,[Ho]
           ,[Email]    
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId])
    
SELECT 
	nv.SysId
	,nv.[Id_Prowatch]
	,nv.LNAME
	,nv.FNAME
	,nv.[Email] 
	, CONVERT(char(8), GETDATE(), 113)
	, ''' + @UserId + '''
	, CONVERT(char(8), GETDATE(), 113)
	, ''' + @UserId + '''
FROM tb_NhanVien nv
WHERE nv.SysId in  (' +  @strSysId + ')'

EXEC sys.sp_executesql @strQuery


END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienCC ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienCC

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNhanVienCC]

	--@TenNhanVien nvarchar(320) = ''
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 

SELECT
		0 AS [Check],
	nv.SysId AS MaNhanVien,
	nv.FNAME As [HoNV] ,
	 nv.LNAME AS [Ten],
	 nv.MaNVUnilever
FROM tb_NhanVien nv
LEFT JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId AND tvn.Id_Prowatch = nv.ID_Prowatch AND tvn.Is_Active = 1
WHERE nv.Is_Active = 1 AND nv.IsDataCC = 1 AND tvn.SysId IS NULL'


EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CheckExistDateOff ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CheckExistDateOff

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNgayNghiThaiSan]

	@MaTruongNhom char(10) = '',
	@TenNhanVien nvarchar(240) = ''
	
    
AS

BEGIN
declare @query nvarchar(max) = '';

SET @TenNhanVien = REPLACE(@TenNhanVien, '''', '''''')

SET @query = 'SELECT DISTINCT
	nnhlct.MaGiaoDich,
	nnhlct.TenNVNghi,
	nnhlct.TenNVDuyet,
	Convert(char(10),CAST(nnp.TuNgay AS DATETIME), 103) AS TuNgay,
	Convert(char(10),CAST(nnp.DenNgay AS DATETIME), 103) AS DenNgay,
	nnp.LyDo1ChiTiet,
	nnp.LyDo2ChiTiet,
	nnp.DienGiai,
	Convert(char(10),CAST(nnp.CreateDate AS DATETIME), 103) AS NgayDuyet
FROM tb_NgayNghiThaiSan nnp
INNER JOIN tb_NgayNghiHopLeChiTiet nnhlct
	ON nnhlct.MaGiaoDich = nnp.MaGiaoDich
WHERE nnhlct.MaNVDuyet = '+ @MaTruongNhom

 IF (@TenNhanVien <> '' and @TenNhanVien <> '%%' and @TenNhanVien <> '''''')
   BEGIN
SET @query = @query + ' AND nnhlct.TenNVNghi like N''%' + @TenNhanVien + '%'''
 END


EXEC sys.sp_executesql @query
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiTaiNan]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CheckExistDateOff ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CheckExistDateOff

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNgayNghiTaiNan]

	@MaTruongNhom char(10) = '',
	@TenNhanVien nvarchar(240) = ''
	
    
AS

BEGIN
declare @query nvarchar(max) = '';

SET @TenNhanVien = REPLACE(@TenNhanVien, '''', '''''')

SET @query = 'SELECT DISTINCT
	nnhlct.MaGiaoDich,
	nnhlct.TenNVNghi,
	nnhlct.TenNVDuyet,
	Convert(char(10),CAST(nnp.TuNgay AS DATETIME), 103) AS TuNgay,
	Convert(char(10),CAST(nnp.DenNgay AS DATETIME), 103) AS DenNgay,
	nnp.LyDo1ChiTiet,
	nnp.LyDo2ChiTiet,
	nnp.DienGiai,
	Convert(char(10),CAST(nnp.CreateDate AS DATETIME), 103) AS NgayDuyet
FROM tb_NgayNghiTaiNan nnp
INNER JOIN tb_NgayNghiHopLeChiTiet nnhlct
	ON nnhlct.MaGiaoDich = nnp.MaGiaoDich
WHERE nnhlct.MaNVDuyet = '+ @MaTruongNhom

 IF (@TenNhanVien <> '' and @TenNhanVien <> '%%' and @TenNhanVien <> '''''')
   BEGIN
SET @query = @query + ' AND nnhlct.TenNVNghi like N''%' + @TenNhanVien + '%'''
 END


EXEC sys.sp_executesql @query
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiPhepInChamCong]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNgayNghiPhepInChamCong ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNgayNghiPhepInChamCong

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNgayNghiPhepInChamCong]

	@MaTruongNhom nvarchar(10) = '',
	@MaNV nvarchar(10) = '',
	@MaGiaoDich nvarchar(35) = ''
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	nnhlct.MaNVNghi,
	nnhlct.MaNVDuyet,
	chamcong.Ngay,
	chamcong.SysID,
	nnhlct.MaGiaoDich
FROM tb_NgayNghiHopLeChiTiet nnhlct
INNER JOIN tb_CC_ChamCong_LichLamviec chamcong
	ON chamcong.[TruongNhom-ID] = nnhlct.MaNVDuyet
	AND chamcong.[NhanVien-Id] = nnhlct.MaNVNghi
	AND chamcong.Ngay = nnhlct.NgayNghi
WHERE nnhlct.MaGiaoDich = ''' + @MaGiaoDich + '''
AND nnhlct.MaNVNghi = ' + @MaNV + '
AND nnhlct.MaNVDuyet = ' + @MaTruongNhom + '
AND (ISNULL(chamcong.L0XacNhan, 0) != 0
OR ISNULL(chamcong.L1XacNhan, 0) != 0
OR ISNULL(chamcong.L2XacNhan, 0) != 0
OR ISNULL(chamcong.L3XacNhan, 0) != 0
OR ISNULL(chamcong.L4XacNhan, 0) != 0)'


EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNgayNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CheckExistDateOff ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CheckExistDateOff

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNgayNghiPhep]

	@MaTruongNhom char(10) = '',
	@TenNhanVien nvarchar(240) = ''
	
    
AS

BEGIN
declare @query nvarchar(max) = '';

SET @TenNhanVien = REPLACE(@TenNhanVien, '''', '''''')

SET @query = 'SELECT DISTINCT
	nnhlct.MaGiaoDich,
	nnhlct.TenNVNghi,
	nnhlct.TenNVDuyet,
	Convert(char(10),CAST(nnp.TuNgay AS DATETIME), 103) AS TuNgay,
	Convert(char(10),CAST(nnp.DenNgay AS DATETIME), 103) AS DenNgay,
	nnp.LyDo1ChiTiet,
	nnp.LyDo2ChiTiet,
	nnp.DienGiai,
	Convert(char(10),CAST(nnp.CreateDate AS DATETIME), 103) AS NgayDuyet
FROM tb_NgayNghiPhep nnp
INNER JOIN tb_NgayNghiHopLeChiTiet nnhlct
	ON nnhlct.MaGiaoDich = nnp.MaGiaoDich
WHERE nnhlct.MaNVDuyet = '+ @MaTruongNhom

 IF (@TenNhanVien <> '' and @TenNhanVien <> '%%' and @TenNhanVien <> '''''')
   BEGIN
SET @query = @query + ' AND nnhlct.TenNVNghi like N''%' + @TenNhanVien + '%'''
 END


EXEC sys.sp_executesql @query
END
GO
/****** Object:  StoredProcedure [dbo].[p_Reject_ChamCongLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_Reject_ChamCongLichLamViec] 
	-- Add the parameters for the stored procedure here
	@SysID nvarchar(max)	= '',
	@Note nvarchar(2000) = '',
	@LastUpDate char(12) = '',
	@lastUpdateId varChar(6) = ''
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
declare @query nvarchar(max) = ''
SET	@query = '
UPDATE tb_CC_ChamCong_LichLamviec
SET	L1XacNhan = 0,
	L2XacNhan = 0,
	L3XacNhan = 0,
	L4XacNhan = 0,
	Note = Note + '' \n ' + @Note + ''',
	LastUpDate = ''' +@LastUpDate+''',
	lastUpdateId = '''+ @lastUpdateId + ''' 
WHERE SysID in ('+ @SysID +')'

   EXEC sys.sp_executesql @query
--select @query 
END
GO
/****** Object:  StoredProcedure [dbo].[p_NgungSuDungNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CheckExistDateOff ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CheckExistDateOff

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_NgungSuDungNgayNghi]

	@SysId nvarchar(max) = ''
	
    
AS

BEGIN
declare @query nvarchar(max) = '';
SET @query = ' UPDATE tb_NgayNghi SET Is_Active = 0 WHERE SysId in ( '+ @SysId + ' ) 
UPDATE tb_NgayNghi_ChiTiet SET Is_Active = 0 WHERE MaNgayNghi in ('+ @SysId + ')
'

EXEC sys.sp_executesql @query
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienToAddNVQL]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienToAddNVQL ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienToAddNVQL

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNhanVienToAddNVQL]

	@LName nvarchar(160) = '',
	@FName nvarchar(160) = '',
	@MaNVUnilever int = 0,
	@LoaiNV char(1) = '1',
	@CardNo nvarchar(160) = ''
	
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @LName = REPLACE(@LName, '''', '''''')

SET @FName = REPLACE(@FName, '''', '''''')

SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''', '''''')

SET @CardNo = REPLACE(@CardNo, '''', '''''')

SET @strQuery = @strQuery + N' 
SELECT
	N''Tạo Đăng Nhập'' AS  tao,
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
	SET @strQuery = @strQuery + ' AND nv.LNAME like N''%' + @LName + '%'''
END
IF (@FName <> '' and @FName <> '%%' and @FName <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.FNAME like N''%' + @FName + '%'''
END

IF @MaNVUnilever <> 0
 BeGIN
	SET @strQuery = @strQuery + ' AND  nv.MaNVUnilever like ''%' + CAST(@MaNVUnilever AS char(10))  + '%'''
 END

IF (@LoaiNV <> '' and @LoaiNV <> '%%' and @LoaiNV <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.MaLoaiNhanVien = ''' + @LoaiNV +''''
END

IF (@CardNo <> '' and @CardNo <> '%%' and @CardNo <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.CardNo like N''%' + @CardNo +'%'''
END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_RemoveNvToGroup]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_RemoveNvToGroup] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_RemoveNvToGroup]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_RemoveNvToGroup]

	@SysId nvarchar(max) = '',
	@MaNhom char(10) = '',
	@MaTruongNhom Char(10) = ''
	
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
DECLARE @TranName VARCHAR(20);
SELECT @TranName = ''MyTransaction'';
BEGIN TRANSACTION @TranName;

delete tb_ThanhVienNhom
WHERE MaNhanVien IN ('+@SysId+') 
COMMIT TRANSACTION @TranName;
'
 
EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetAllTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetAllTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchTeam]
	@Ten nvarchar(160) = '',
	@Ho nvarchar(160) = '',
	@Nhom nvarchar(250) = ''
AS

BEGIN

SET @Ten = REPLACE(@Ten, '''', '''''')
SET @Ho = REPLACE(@Ho, '''', '''''')
SET @Nhom = REPLACE(@Nhom, '''', '''''')



Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	0 AS [Check],
	nv.SysId AS MaTruongNhom,
	nv.LNAME,
	nv.FNAME,
	n.SysId AS MaNhom,
	n.TenNhom,
	(CASE WHEN n.LoaiNhom = 1 THEN N''Hành Chính'' ELSE N''Công Nhân'' END) AS LoaiNhom,
	n.MoTa,
	(CASE WHEN n.Is_Active = 1 THEN 0 Else 1 END) AS  Is_Active, 
	n.IsOutsource
	
FROM tb_Nhom n
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln
	ON nvqln.MaNhom = n.SysId
INNER JOIN tb_NhanVien nv ON nv.SysId = nvqln.MaNhanVienQuanLy
WHERE 1 = 1
'
 
 IF (@Ten <> '' and @Ten <> '%%' and @Ten <> '''''')
   begin
SET @strQuery = @strQuery + ' AND Ltrim(nv.LNAME) like N''%' + @Ten + '%'''
 END

 IF (@Ho <> '' and @Ho <> '%%' and @Ho <> '''''')
   begin
SET @strQuery = @strQuery + ' AND Ltrim(nv.FNAME) like N''%' + @Ho + '%'''
 END

 IF (@Nhom <> '' and @Nhom <> '%%' and @Nhom <> '''''')
   begin
SET @strQuery = @strQuery + ' AND Ltrim(n.TenNhom) like N''%' + @Nhom + '%'''
 END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienNghiThaiSan ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienNghiThaiSan

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienNghiThaiSan]
	@TruongNhom char(10) = ''  
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	nv.SysId AS MaNhanVien,
	nv.FNAME  +''''+ nv.LNAME AS [Ten]
FROM tb_NhanVien nv
INNER JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId 
	AND tvn.Id_Prowatch = nv.ID_Prowatch 
	AND tvn.Is_Active = 1
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln on nvqln.MaNhom = tvn.MaNhom
WHERE nv.Is_Active = 1 
AND nv.IsDataCC = 1 
AND IsNUll(nv.GioiTinh,1) = 0
AND nvqln.MaNhanVienQuanLy = ' + @TruongNhom

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienNghiThaiSan ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienNghiThaiSan

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienNghiPhep]
	@TruongNhom char(10) = ''  
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	nv.SysId AS MaNhanVien,
	nv.FNAME  +''''+ nv.LNAME AS [Ten]
FROM tb_NhanVien nv
INNER JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId 
	AND tvn.Id_Prowatch = nv.ID_Prowatch 
	AND tvn.Is_Active = 1
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln on nvqln.MaNhom = tvn.MaNhom
WHERE nv.Is_Active = 1 
AND nv.IsDataCC = 1 

AND nvqln.MaNhanVienQuanLy = ' + @TruongNhom

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienChamCong]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienChamCong ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienChamCong

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienChamCong]
	@LName nvarchar(120) = ''
	, @FName nvarChar(120) = ''
	, @Email nvarChar(120) = ''
	, @IsDataCC int = 0
AS
BEGIN
DECLARE @Query nvarchar(max) = ''

SET @LName = REPLACE(@LName, '''', '''''')
SET @FName = REPLACE(@FName, '''', '''''')

SET @Email = REPLACE(@Email, '''', '''''')


SET	@Query = @Query + N'
SELECT 
0 AS [Check]
,[SysId]
      ,CAST([ID_Prowatch] AS INT ) AS ID_Prowatch
      ,[MaNVUnilever]
      ,[LNAME]
      ,[FNAME]
      ,[MI]
      ,(CASE WHEN ISNULL([GioiTinh], 0) = 0 THEN N''Nữ'' ELSE N''Nam'' END ) AS GioiTinh
      ,[Email]
      ,[BADGE_STATUS_DESC]
      ,[BADGE_TYPE_DESC]
      , CONVERT(char(10),[ISSUE_DATE], 103) AS ISSUE_DATE
      , CONVERT(char(10),[EXPIRE_DATE] , 103) AS EXPIRE_DATE
      ,CAST([TSTAMP] AS INT) AS TSTAMP
      ,( CASE WHEN [OutsourceId] = ''0'' THEN ''Unilever''  ELSE N''Thắng Lợi'' END) AS   Outsource
  FROM [dbo].[tb_NhanVien] WHERE 1 = 1 '
  
  IF (@LName <> '' and @LName <> '%%' and @LName <> '''''')
BEGIN
	SET @Query = @Query + '  AND LNAME LIKE  N''%' + @LName + '%'''
END

  IF (@FName <> '' and @FName <> '%%' and @FName <> '''''')
BEGIN
	SET @Query = @Query + '  AND FName LIKE  N''%' + @FName + '%'''
END
  IF (@Email <> '' and @Email <> '%%' and @Email <> '''''')
BEGIN
	SET @Query = @Query + '  AND Email LIKE  N''%' + @Email + '%'''
	
END
  IF (@IsDataCC = 1)
BEGIN
	SET @Query = @Query + '  AND IsDataCC = 1 '
	
END
ELSE 
BEGIN
	SET @Query = @Query + '  AND IsDataCC = 0 '
	
END


EXEC sys.sp_executesql @Query

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienCCByName]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienCCByName ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienCCByName

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienCCByName]

	@TenNhanVien nvarchar(320) = ''
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @TenNhanVien = REPLACE(@TenNhanVien, '''', '''''')
SET @strQuery = @strQuery + ' 
SELECT * FROM (
SELECT
	0 AS [Check],
	nv.SysId AS MaNhanVien,
	nv.FNAME + '''' + nv.LNAME AS TenNhanVien,
	tvn.SysId,
	nv.MaNVUnilever
FROM tb_NhanVien nv
LEFT JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId AND tvn.Id_Prowatch = nv.ID_Prowatch
WHERE nv.Is_Active = 1 AND nv.IsDataCC = 1 AND tvn.SysId IS NULL ) nhanvien'
 IF (@TenNhanVien <> '' and @TenNhanVien <> '%%' and @TenNhanVien <> '''''')
   BEGIN
SET @strQuery = @strQuery + ' AND nhanvien.TenNhanVien like N''%' + @TenNhanVien + '%'''
 END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienCC ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienCC

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienCC]

	@Ten nvarchar(160) = '',
	@Ho nvarchar(160) = '',
	@MaNV int = 0,
	@LoaiNV char(1) = '1',
	@MaThe nvarchar(160) = '',
	@MaNvUnilever nvarchar(50) = ''
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @Ten = REPLACE(@Ten, '''', '''''')

SET @Ho = REPLACE(@Ho, '''', '''''')

SET @MaNvUnilever = REPLACE(@MaNvUnilever, '''', '''''')

SET @MaThe = REPLACE(@MaThe, '''', '''''')



SET @strQuery = @strQuery + ' 
SELECT
	0 AS [Check],
	nv.SysId AS MaNhanVien,
	nv.FNAME As [HoNV] ,
	 nv.LNAME AS [Ten],
	nv.MaNVUnilever
FROM tb_NhanVien nv
LEFT JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId AND tvn.Id_Prowatch = nv.ID_Prowatch AND tvn.Is_Active = 1
WHERE nv.Is_Active = 1 AND nv.IsDataCC = 1 
 AND tvn.SysId IS NULL '
 
IF (@Ten <> '' and @Ten <> '%%' and @Ten <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND Ltrim(nv.LNAME) like N''%' + @Ten + '%'''
END
IF (@Ho <> '' and @Ho <> '%%' and @Ho <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND Ltrim(nv.FNAME) like N''%' + @Ho + '%'''
END

IF (@MaNvUnilever <> '' and @MaNvUnilever <> '%%' and @MaNvUnilever <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND Ltrim(nv.MaNVUnilever) like N''%' + @MaNvUnilever + '%'''
END

IF (@MaThe <> '' and @MaThe <> '%%' and @MaThe <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND Ltrim(nv.CardNo) like N''%' + @MaThe + '%'''
END


IF @MaNV <> 0
 BeGIN
	SET @strQuery = @strQuery + ' AND nv.SysId = ' + CAST(@MaNV AS char(10)) 
 END

IF (@LoaiNV <> '' and @LoaiNV <> '%%' and @LoaiNV <> '''''')
BEGIN
	SET @strQuery = @strQuery + ' AND nv.MaLoaiNhanVien = ''' + @LoaiNV +''''
END


EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNhanVienByName]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienByName ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienByName

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNhanVienByName]

	@Nhom int = 0,
	@TruongNhom int = 0,
	@TenNhanVien nvarchar(320) = ''
	--@MaTruongNhom varchar(20) = '',
 --   @OnOff Char(1) = '',
 --   @Ca char(3) = '',
	--@L0XacNhan char(1) = '',
	--@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @TenNhanVien = REPLACE(@TenNhanVien, '''', '''''')
SET @strQuery = @strQuery + ' 

SELECT 0 AS Check, nhanvien.* FROM (
SELECT

	tvn.[MaNhanVien],
	tvn.[Ho] + '''' + [Ten] AS TenNhanVien
	
FROM [dbo].[tb_ThanhVienNhom] tvn
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln ON nvqln.MaNhom = tvn.MaNhom
  WHERE tvn.Is_Active = 1 AND tvn.MaNhom = ' + CAST(@Nhom AS char(10)) +
' AND nvqln.MaNhanVienQuanLy  = ' + CAST(@TruongNhom AS char(10))
+ ') nhanvien where 1 = 1 '
  IF (@TenNhanVien <> '' and @TenNhanVien <> '%%' and @TenNhanVien <> '''''')
   begin
SET @strQuery = @strQuery + ' AND nhanvien.TenNhanVien like N''%' + @TenNhanVien + '%'''
 END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetAllTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetAllTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetAllTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetAllTeam]
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + N' 
SELECT
	0 AS [Check],
	nv.SysId AS MaTruongNhom,
	nv.LNAME,
	nv.FNAME,
	n.SysId AS MaNhom,
	n.TenNhom,
	(CASE WHEN n.LoaiNhom = 1 THEN N''Hành Chính'' ELSE N''Công Nhân'' END) AS LoaiNhom,
	n.MoTa,
	(CASE WHEN n.Is_Active = 1 THEN 0 Else 1 END) AS  Is_Active, 
	n.IsOutsource
	
FROM tb_Nhom n
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln
	ON nvqln.MaNhom = n.SysId
INNER JOIN tb_NhanVien nv ON nv.SysId = nvqln.MaNhanVienQuanLy
' 



EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_TruongNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_TruongNhom]
	@SysId int = 0
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	nvql.[SysId],
	nvql.[MaNhanVien] AS TruongNhomId,
	nvql.[Id_Prowatch],
	nvql.[Ho] + '''' + nvql.[Ten] AS TenTruongNhom,
	nvql.[Email],
	nvql.[DienThoai],
	nvql.[CapBat],
	cap0.FNAME + '''' + cap0.LNAME AS L0XacNhanTen,
	cap0.SysId AS L0XacNhanId,
	cap1.FNAME + '''' + cap1.LNAME AS L1XacNhanTen,
	cap1.SysId AS L1XacNhanId,
	cap2.FNAME + '''' + cap2.LNAME AS L2XacNhanTen,
	cap2.SysId AS L2XacNhanId,
	cap3.FNAME + '''' + cap3.LNAME AS L3XacNhanTen,
	cap3.SysId AS L3XacNhanId,
	cap4.FNAME + '''' + cap4.LNAME AS L4XacNhanTen,
	cap4.SysId AS L4XacNhanId

FROM [dbo].[tb_NhanVienQuanLy] nvql
INNER JOIN dbo.tb_CapBatXacNhanChamCong cbcc
	ON cbcc.CapI = nvql.SysId
INNER JOIN tb_NhanVien cap1
	ON cbcc.CapI = cap1.SysId
INNER JOIN tb_NhanVien cap0
	ON cbcc.Cap0 = cap0.SysId
INNER JOIN tb_NhanVien cap2
	ON cbcc.CapII = cap2.SysId
INNER JOIN tb_NhanVien cap3
	ON cbcc.CapIII = cap3.SysId
INNER JOIN tb_NhanVien cap4
	ON cbcc.CapIV = cap4.SysId
WHERE nvql.Is_Active = 1 AND nvql.SysId = ' + CAST(@SysId AS char(10))

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_NhomByTruongNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_Get_NhomByTruongNhom] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_NhomByTruongNhom]	
	@TruongNhomId int = 0	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT nvqln.[SysId]
      ,nvqln.[MaNhanVienQuanLy]
      ,nvqln.[Id_Prowatch]
      ,nvqln.[MaNhom] AS NhomId
      ,n.TenNhom 
      ,n.IsOutsource  
  FROM [dbo].[tb_NhanVienQuanLy_Nhom] nvqln
  INNER JOIN tb_Nhom n ON n.SysId = nvqln.MaNhom
  WHERE nvqln.[MaNhanVienQuanLy] = ' + CAST(@TruongNhomId AS char(10))

EXEC sys.sp_executesql @strQuery
--SELECT
--	@strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_NhanVien]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_NhanVien]

	@Nhom int = 0,
	@TruongNhom int = 0
	--@DenNgay char(12) = '',
	--@MaTruongNhom varchar(20) = '',
 --   @OnOff Char(1) = '',
 --   @Ca char(3) = '',
	--@L0XacNhan char(1) = '',
	--@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''


SET @strQuery = @strQuery + N' 
SELECT

	tvn.[MaNhanVien],
	nv.MaNVUnilever,
	tvn.[Ho] + '''' + [Ten] AS TenNhanVien,
	nv.Email,
	(Case when nv.MaLoaiNhanVien = 1 THEN N''Nhà Máy'' ELSE N''NV Unilever'' END ) AS MaLoaiNhanVien,
	n.TenNhom,
	nv.IsOutsource

FROM [dbo].[tb_ThanhVienNhom] tvn
INNER JOIN tb_NhanVienQuanLy_Nhom nvqln
	ON nvqln.MaNhom = tvn.MaNhom
INNER JOIN tb_Nhom n ON n.SysId = tvn.MaNhom
INNER JOIN tb_NhanVien nv
	ON nv.SysId = tvn.MaNhanVien
	AND nv.Is_Active = 1
WHERE tvn.Is_Active = 1
 AND tvn.MaNhom = ' + CAST(@Nhom AS char(10)) +
  ' AND nvqln.MaNhanVienQuanLy  = ' + CAST(@TruongNhom AS char(10))

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL4]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL4]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
    @OnOff Char(1) = '',
    @Ca char(3) = '',
	@L4XacNhan char(1) = '',
	@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = '
SELECT 
0 AS [Check]
,[SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      , CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
      ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  L1XacNhan = 1 AND  L2XacNhan = 1 AND L3XacNhan = 1 '

IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END


IF(@L4XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L4XacNhan = ' + @L4XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL3]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL3]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
    @OnOff Char(1) = '',
    @Ca char(3) = '',
	@L3XacNhan char(1) = '',
	@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = '
SELECT 
0 AS [Check]
,[SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      , CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
       ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  L1XacNhan = 1 AND  L2XacNhan = 1 '

IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END


IF(@L3XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L3XacNhan = ' + @L3XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL2]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL2]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
    @OnOff Char(1) = '',
    @Ca char(3) = '',
	@L2XacNhan char(1) = '',
	@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = '
SELECT 
0 AS [Check]
,[SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      , CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
      ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  L1XacNhan = 1 '

IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END

IF(@L2XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L2XacNhan = ' + @L2XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL1]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
    @OnOff Char(1) = '',
    @Ca char(3) = '',
	@L1XacNhan char(1) = '',
	@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = '
SELECT [SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      , CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
      ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE   IsOutSource = 0 '


IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END


IF(@L1XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L1XacNhan = ' + @L1XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

SET @strQuery = @strQuery + ' UNION 
SELECT [SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      , CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
      ,[L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,[L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,[L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,[L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  IsOutSource = 1 AND L0XacNhan = 1

'

IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END


IF(@L1XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L1XacNhan = ' + @L1XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_ChamCongLichLamViecL0]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_ChamCongLichLamViecL0]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
    @OnOff Char(1) = '',
    @Ca char(3) = '',
	@L0XacNhan char(1) = '',
	@Nhom_Id varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''


SET @strQuery = @strQuery + ' 
SELECT [SysID]
      ,[TruongNhom-ID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-Id]
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[NhanVien-Loai-Id]
      ,[NhanVien-Loai-Ten]
      ,[Tuan]
      ,[Ngay]
      ,CONVERT(CHAR(10), CAST(Ngay_Ra AS DATE), 103) AS NgayRa
      ,[Ca-Id]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[KhuVucLv-Id]
      ,[DauDocTheVao-Id]
      ,[DauDocTheRa-Id]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,[L0XacNhan]
      ,[L0XacNhan-Id]
   ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,[L0XacNhan-Date]
      ,[L1XacNhan]
      ,[L1XacNhan-Id]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,[L1XacNhan-Date]
      ,[L1XacNhan-GhiChu]
      ,[L2XacNhan]
      ,[L2XacNhan-Id]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,[L2XacNhan-Date]
      ,[L3XacNhan]
      ,[L3XacNhan-Id]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,[L3XacNhan-Date]
      ,[L4XacNhan]
      ,[L4XacNhan-Id]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[L4XacNhan-Date]
      ,[NhanVienThayThe-Id]
      ,[NhanVienThayThe-TenNgan]
      ,[DaLayDuLieuChamCong]
      ,[Note]
      ,[ThoiGianQuyDinhVao]
      ,[ThoiGianQuyDinhRa]
      ,[CARDNO]
      ,[BADGENO]
      ,[LyDoNghi]
      ,[Is_Active]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  IsOutSource = 1 

'

IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END


IF(@L0XacNhan <> '') 
Begin
  SET @strQuery = @strQuery + ' AND L0XacNhan = ' + @L0XacNhan
END


IF(@OnOff <> '') 
Begin
  SET @strQuery = @strQuery + ' AND On_Off = ''' + @OnOff + ''''
END

IF(@Ca <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Ca-Id] = ''' + @Ca + ''''
END


IF(@Nhom_Id  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @Nhom_Id  + ''''
END

EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Get_CCLichLamViecManual]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_Get_CCLichLamViecManual] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_Get_CCLichLamViecManual]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Get_CCLichLamViecManual]

	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(20) = '',
	@NhomId varchar(6) = ''
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = '
SELECT 
0 AS [Check]
, [SysID]
      ,[TruongNhom-TenNgan]
      ,[Nhom-TenNgan]
      ,[NhanVien-Ten]
      ,CONVERT(char(10), cast(Ngay AS DATE), 103) AS  [Ngay]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[Vao]
      ,[Ra]
      ,[Vao-L1]
      ,[Ra-L1]
      ,[On_Off]
      ,[CoDangKyOT]
      ,[OTHeThongTinh]
      ,[OTL1]
      ,[CoPhep]
      ,[DuocTinhCong]
      ,(CASE WHEN L0XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L0XacNhan-TenNgan]
      ELSE '''' END ) AS [L0XacNhan-TenNgan]
      ,(CASE WHEN L1XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L1XacNhan-TenNgan]
      ELSE '''' END ) AS[L1XacNhan-TenNgan]
      ,(CASE WHEN L2XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L2XacNhan-TenNgan]
      ELSE '''' END ) AS [L2XacNhan-TenNgan]
      ,(CASE WHEN L3XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L3XacNhan-TenNgan]
      ELSE '''' END ) AS [L3XacNhan-TenNgan]
      ,(CASE WHEN L4XacNhan = 1 THEN [tb_CC_ChamCong_LichLamviec].[L4XacNhan-TenNgan]
      ELSE '''' END ) AS [L4XacNhan-TenNgan]
      ,[NhanVienThayThe-TenNgan]
      ,[Note]
      ,[DaLayDuLieuChamCong]
  FROM [dbo].[tb_CC_ChamCong_LichLamviec]
WHERE  1 = 1 AND  Is_Active = 1
AND L1XacNhan = 0 AND  L2XacNhan = 0 AND L3XacNhan = 0 AND L3XacNhan = 0 AND L0XacNhan = 0

 '


IF(@Tuan <> '') 
Begin
 SET @strQuery = @strQuery + ' AND Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
 SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) >= ' + @TuNgay 
END


IF(@DenNgay <> '') 
Begin
  SET @strQuery = @strQuery + ' AND CAST(Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [TruongNhom-ID] = ' + @MaTruongNhom  
END

IF(@NhomId  <> '') 
Begin
  SET @strQuery = @strQuery + ' AND [Nhom-Id]  = ''' + @NhomId  + ''''
END


EXEC sys.sp_executesql @strQuery
select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetTruongNhomForTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetTruongNhomForTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetTruongNhomForTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetTruongNhomForTeam]
			
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + '
SELECT nv.MaNVUnilever,
	nv.FNAME + '''' + nv.LNAME + '' - '' + u.USERNAME AS FullName
FROM FPT_ENV_AUT_USER u
INNER JOIN tb_NhanVien nv
	ON u.MaNhanVien = nv.SysId
LEFT JOIN tb_NhanVienQuanLy_Nhom nvn
	ON nv.SysId = nvn.MaNhanVienQuanLy
WHERE nvn.SysId IS NULL
AND nv.Is_Active = 1
AND u.LevelQuanLy in (0,1)'

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetThongTinNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhomByTruongNhom ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhomByTruongNhom

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetThongTinNhom]
	@TruongNhom int = 0  
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	n.[SysId],
	n.[TenNhom],
	n.[LoaiNhom],
	n.[IsOt],
	n.[IsOutsource],
	n.[MoTa]
FROM tb_NhanVienQuanLy_Nhom nvqln
INNER JOIN tb_Nhom n
	ON n.SysId = nvqln.MaNhom
WHERE nvqln.MaNhanVienQuanLy = ' + CAST(@TruongNhom AS char(10))



EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[P_GetThanhVienNhomAvailable]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [P_GetThanhVienNhomAvailable] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [P_GetThanhVienNhomAvailable]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[P_GetThanhVienNhomAvailable]

	@TruongNhom_ID int = '',
	@TenTruongNhom nvarchar(240) = '',
	@Nhom_Id char(10) = '',
	@TenNhom nvarchar(250) = '',
	@Tuan char(2) = '',
	@Ngay char(10) = '',
	@TenNhanVien nvarchar(120) = '',
    @HoNhanVien nvarchar(120) = ''
AS

BEGIN

declare @query nvarchar(max) = ''

SET @query = '
SELECT DISTINCT
	0 AS [Check]
	, ''' + @TenTruongNhom + ''' As TenTruongNhom
	, nv.SysId AS [NhanVien-Id]
	, nv.FNAME + '''' + nv.LNAME AS [NhanVien-Ten]
	, ''' + @TenNhom + ''' AS TenNhom
	, ''' + @Tuan + ''' AS Tuan
	, ''' + @Ngay + ''' AS Ngay
	, nv.IsOutsource
FROM tb_ThanhVienNhom tvn
INNER JOIN tb_NhanVien nv
	ON nv.SysId = tvn.MaNhanVien
LEFT OUTER JOIN tb_CC_ChamCong_LichLamviec cc
	ON cc.[NhanVien-Id] = nv.SysId 
	AND cc.Is_Active = 1 
	AND cc.[TruongNhom-ID] = ' + CAST(@TruongNhom_ID AS Char(10))+
' AND cc.[Nhom-Id] = '+ CAST(@Nhom_Id AS Char(10)) +
' AND cc.Tuan = ''' + @Tuan + ''''+
' AND cc.Ngay = ''' + @Ngay + ''''+
' WHERE cc.SysID IS NULL '

IF @TenNhanVien <> '' AND @TenNhanVien <> '%' AND @TenNhanVien <> '%%' 
	BEGIN 
		SET @query = @query + ' AND nv.LNAME LIKE ''%' + @TenNhanVien + '%'''
	END 
IF @HoNhanVien <> '' AND @HoNhanVien <> '%' AND @HoNhanVien <> '%%' 
	BEGIN 
		SET @query = @query + ' AND nv.FNAME LIKE  ''%' + @HoNhanVien + '%'''
	END 

--SELECT @query
EXEC sp_executesql @query

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetThanhVienNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetThanhVienNhom ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetThanhVienNhom

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetThanhVienNhom]
	@Nhom char(10) = 0  
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT
	0 AS [Check],
	nv.SysId AS MaNhanVien,
	nv.FNAME As [HoNV] ,
	 nv.LNAME AS [Ten],
	 nv.MaNVUnilever
FROM tb_NhanVien nv
INNER JOIN tb_ThanhVienNhom tvn
	ON tvn.MaNhanVien = nv.SysId 
	AND tvn.Id_Prowatch = nv.ID_Prowatch 
	AND tvn.Is_Active = 1
WHERE nv.Is_Active = 1 AND nv.IsDataCC = 1 AND tvn.MaNhom = ' + CAST(@Nhom AS char(10))



EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetShiftForTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetShiftForTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetShiftForTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetShiftForTeam]
	@Nhom char(10) = '',	
	@TuTuan char(2) = '',
	@DenTuan char(2) = '',
	@Year char(4) = ''
AS

	
BEGIN
Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT clvn.[SysId]
      ,clvn.[MaNhom]
      ,n.TenNhom
      ,clvn.[ThuTrongTuan]
      ,clvn.[MaCaHeThong]
      ,clvn.[MaCaLaViec] 
      ,clvn.[PhanXuongName]
      ,clvn.[PhanXuongId] 
      ,clvn.[IsOT]
      ,ddtvao.DESCRP AS [DauDocTheVaoId]
      ,ddtra.DESCRP AS [DauDocTheRaId]
      ,clvn.[Tuan]    
      ,clvn.[NgayVao]
      ,clvn.[IsOff]
      ,clvn.[IsOff_Caution]
    ,clvn.Is_Active
  FROM [dbo].[tb_CaLamViecNhom] clvn
  INNER JOIN tb_Nhom n on n.SysId = clvn.MaNhom
  LEFT JOIN LOGICAL_DEV ddtvao ON ddtvao.ID = clvn.[DauDocTheVaoId]
  LEFT JOIN LOGICAL_DEV ddtra ON ddtra.ID = clvn.DauDocTheRaId
  
  WHERE n.SysId = ' + @Nhom + ' 
  AND clvn.Tuan BETWEEN ' + @TuTuan + ' AND ' + @DenTuan +
 ' AND cast(SUBSTRING(clvn.NgayVao,1,4) AS int) =  ' + @Year

EXEC sys.sp_executesql @strQuery
SELECT
	@strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel4]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvQuanlyLevel4]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @FIRSTNAME = REPLACE(@FIRSTNAME, '''','''''')
SET @LASTNAME = REPLACE(@LASTNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')
SET @CardNo = REPLACE(@CardNo, '''','''''')


declare @query nvarchar (max) = '';

		SET @query = @query + 	N' SELECT
				u.MaNhanVien AS SysId,
 				nv.MaNVUnilever,
				u.USERNAME,
				u.FIRSTNAME AS FNAME,
				u.LASTNAME AS LNAME,
				u.EMAIL,
				u.CardNo,
				N''Trưởng Nhóm HR'' AS LevelQuanLy,
				ur.ROLE_NAME AS UROLE_ID,
				N''Thêm L3'' AS AddL3
			FROM FPT_ENV_AUT_USER u
			INNER JOIN FPT_ENV_AUT_USERROLE ur
				ON ur.UROLE_ID = u.UROLE_ID
			INNER JOIN tb_NhanVien nv
				ON nv.SysId = u.MaNhanVien
				AND nv.Is_Active = 1
			WHERE u.STATUS = ''AC''
			AND u.LevelQuanLy = 4 '
IF @USERNAME <> '' AND @USERNAME <> '''''' AND @USERNAME <> '%' AND @USERNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.USERNAME like ''%'+ @USERNAME + '%'''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like ''%'+ @FIRSTNAME + '%'''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like ''%'+ @LASTNAME + '%'''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like ''%'+ @MaNVUnilever + '%'''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like ''%'+ @CardNo + '%'''
	
	END			

EXEC sys.sp_executesql @query
--select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel3Available]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvQuanlyLevel3Available]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @FIRSTNAME = REPLACE(@FIRSTNAME, '''','''''')
SET @LASTNAME = REPLACE(@LASTNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')
SET @CardNo = REPLACE(@CardNo, '''','''''')


declare @query nvarchar (max) = '';

SET @query = @query + 	N' SELECT
	0 AS [Check],
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L3'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
LEFT JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
WHERE u.STATUS = ''AC''
AND u.LevelQuanLy = 3 
AND cbnv.SysId IS NULL
			'
IF @USERNAME <> '' AND @USERNAME <> '''''' AND @USERNAME <> '%' AND @USERNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.USERNAME like ''%'+ @USERNAME + '%'''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like ''%'+ @FIRSTNAME + '%'''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like ''%'+ @LASTNAME + '%'''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like ''%'+ @MaNVUnilever + '%'''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like ''%'+ @CardNo + '%'''
	
	END			

EXEC sys.sp_executesql @query


			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel2Available]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvQuanlyLevel2Available]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @FIRSTNAME = REPLACE(@FIRSTNAME, '''','''''')
SET @LASTNAME = REPLACE(@LASTNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')
SET @CardNo = REPLACE(@CardNo, '''','''''')


declare @query nvarchar (max) = '';

SET @query = @query + 	N' SELECT
	0 AS [Check],
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L2'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
LEFT JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
WHERE u.STATUS = ''AC''
AND u.LevelQuanLy = 2 
AND cbnv.SysId IS NULL
			'
IF @USERNAME <> '' AND @USERNAME <> '''''' AND @USERNAME <> '%' AND @USERNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.USERNAME like ''%'+ @USERNAME + '%'''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like ''%'+ @FIRSTNAME + '%'''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like ''%'+ @LASTNAME + '%'''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like ''%'+ @MaNVUnilever + '%'''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like ''%'+ @CardNo + '%'''
	
	END			

EXEC sys.sp_executesql @query


			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel1Available]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvQuanlyLevel1Available]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @FIRSTNAME = REPLACE(@FIRSTNAME, '''','''''')
SET @LASTNAME = REPLACE(@LASTNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')
SET @CardNo = REPLACE(@CardNo, '''','''''')


declare @query nvarchar (max) = '';

SET @query = @query + 	N' SELECT
	0 AS [Check],
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L1'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
LEFT JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
WHERE u.STATUS = ''AC''
AND u.LevelQuanLy = 1 
AND cbnv.SysId IS NULL
			'
IF @USERNAME <> '' AND @USERNAME <> '''''' AND @USERNAME <> '%' AND @USERNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.USERNAME like ''%'+ @USERNAME + '%'''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like ''%'+ @FIRSTNAME + '%'''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like ''%'+ @LASTNAME + '%'''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like ''%'+ @MaNVUnilever + '%'''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like ''%'+ @CardNo + '%'''
	
	END			

EXEC sys.sp_executesql @query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel0Available]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvQuanlyLevel0Available]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @FIRSTNAME = REPLACE(@FIRSTNAME, '''','''''')
SET @LASTNAME = REPLACE(@LASTNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')
SET @CardNo = REPLACE(@CardNo, '''','''''')


declare @query nvarchar (max) = '';

SET @query = @query + 	N' SELECT
	0 AS [Check],
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm Thắng Lợi'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
LEFT JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
WHERE u.STATUS = ''AC''
AND u.LevelQuanLy = 0 
AND cbnv.SysId IS NULL
			'
IF @USERNAME <> '' AND @USERNAME <> '''''' AND @USERNAME <> '%' AND @USERNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.USERNAME like ''%'+ @USERNAME + '%'''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like ''%'+ @FIRSTNAME + '%'''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like ''%'+ @LASTNAME + '%'''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like ''%'+ @MaNVUnilever + '%'''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like ''%'+ @CardNo + '%'''
	
	END			

EXEC sys.sp_executesql @query
select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL3InL4]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvL3InL4]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',	
	@MaNVUnilever varchar(50)= ''
AS
BEGIN
SET @USERNAME = REPLACE(REPLACE(@USERNAME, '''',''''''),'*', '%')
SET @MaNVUnilever = REPLACE(REPLACE(@MaNVUnilever, '''',''''''),'*', '%')


declare @query nvarchar (max) = '';

		SET @query = @query + 	N'SELECT N''Thêm L2'' AS AddL3,
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L3'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
	
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
INNER JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
AND u.LevelQuanLy = 3 
WHERE u.STATUS = ''AC''	
AND cbnv.ParentId = '''+ @USERNAME + ''''


EXEC sys.sp_executesql @query
--select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL2InL3]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvL2InL3]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',	
	@MaNVUnilever varchar(50)= ''
AS
BEGIN
SET @USERNAME = REPLACE(REPLACE(@USERNAME, '''',''''''),'*', '%')
SET @MaNVUnilever = REPLACE(REPLACE(@MaNVUnilever, '''',''''''),'*', '%')


declare @query nvarchar (max) = '';

		SET @query = @query + 	N'SELECT N''Thêm L1'' AS AddL3,
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L2'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
	
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
INNER JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
AND u.LevelQuanLy = 2 
WHERE u.STATUS = ''AC''	
AND cbnv.ParentId = '''+ @USERNAME + ''''


EXEC sys.sp_executesql @query
--select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL1InL2]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvL1InL2]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',	
	@MaNVUnilever varchar(50)= ''
AS
BEGIN
SET @USERNAME = REPLACE(REPLACE(@USERNAME, '''',''''''),'*', '%')
SET @MaNVUnilever = REPLACE(REPLACE(@MaNVUnilever, '''',''''''),'*', '%')


declare @query nvarchar (max) = '';

		SET @query = @query + 	N'SELECT N''Thêm L0'' AS AddL3,
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm L1'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
	
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
INNER JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
AND u.LevelQuanLy = 1
WHERE u.STATUS = ''AC''	
AND cbnv.ParentId = '''+ @USERNAME + ''''


EXEC sys.sp_executesql @query
--select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL0InL1]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNvL0InL1]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',	
	@MaNVUnilever varchar(50)= ''
AS
BEGIN
SET @USERNAME = REPLACE(@USERNAME, '''','''''')
SET @MaNVUnilever = REPLACE(@MaNVUnilever, '''','''''')


declare @query nvarchar (max) = '';

		SET @query = @query + 	N'SELECT 
	u.MaNhanVien AS SysId,
	nv.MaNVUnilever,
	u.USERNAME,
	u.FIRSTNAME AS FNAME,
	u.LASTNAME AS LNAME,
	u.EMAIL,
	u.CardNo,
	N''Trưởng Nhóm Thắng Lợi'' AS LevelQuanLy,
	ur.ROLE_NAME AS UROLE_ID
	
FROM FPT_ENV_AUT_USER u
INNER JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
INNER JOIN tb_NhanVien nv
	ON nv.SysId = u.MaNhanVien
	AND nv.Is_Active = 1
INNER JOIN tb_CapBatNhanVien cbnv ON cbnv.ChildId = u.USERNAME
AND u.LevelQuanLy = 0
WHERE u.STATUS = ''AC''	
AND cbnv.ParentId = '''+ @USERNAME + ''''


EXEC sys.sp_executesql @query
--select @Query

			
END
GO
/****** Object:  StoredProcedure [dbo].[p_XoaLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_XoaLichLamViec] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_XoaLichLamViec]
	@NhomId int = 0,	
	@TruongNhomId int = 0,
	@TuanLamViec char(2) = ''
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
DELETE tb_CC_ChamCong_LichLamviec WHERE
[TruongNhom-ID] = ' +CAST(@TruongNhomId AS char(10)) + '
AND [Nhom-Id] = ' + CAST(@NhomId AS char(10)) +'
AND Tuan = ''' + @TuanLamViec + '''
AND DaLayDuLieuChamCong = 0
'

EXEC sys.sp_executesql @strQuery
--SELECT
--	@strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_XemLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_XemLichLamViec] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_XemLichLamViec]
	@NhomId int = 0,	
	@TruongNhomId int = 0,
	@TuanLamViec char(2) = ''
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
SELECT 
      [TruongNhom-TenNgan]   
      ,[Nhom-TenNgan]
      ,[NhanVien-Id]
      ,[NhanVien-Ten]
      ,[Tuan]
       ,CONVERT( char(10), CAST([Ngay] AS date),105) AS [Ngay]
      ,[Ca-DienGiai]
      ,[NgayTrongTuan]
      ,[IsOutSource]
      ,[CoDangKyOT]
      ,[L0XacNhan-TenNgan]   
      ,[L1XacNhan-TenNgan]   
      ,[L2XacNhan-TenNgan]      
      ,[L3XacNhan-TenNgan]   
      ,[L4XacNhan-TenNgan]
FROM [dbo].[tb_CC_ChamCong_LichLamviec] WHERE
[TruongNhom-ID] = ' +CAST(@TruongNhomId AS char(10)) + '
AND [Nhom-Id] = ' + CAST(@NhomId AS char(10)) +'
AND Tuan = ''' + @TuanLamViec + '''
AND DaLayDuLieuChamCong = 0
AND Is_Active = 1

'

EXEC sys.sp_executesql @strQuery
--SELECT
--	@strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_UnActiveTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_UnActiveTeam] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_UnActiveTeam]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_UnActiveTeam]
	@Nhom nvarchar (max) = '',
	@UserId char(10) = ''
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
UPDATE tb_Nhom
SET Is_Active = 0,
LastUpDate = CONVERT(char(10), GETDATE(), 112),
lastUpdateId = '+@UserId+' WHERE SysId IN ('+@Nhom+')
' 



EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_UnActiveNhanVienQuanLyNhom]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_UnActiveNhanVienQuanLyNhom] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_UnActiveNhanVienQuanLyNhom]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_UnActiveNhanVienQuanLyNhom]
	@Nhom char (10) = '',
	@TruongNhom char (10) = '',
	@UserId char(10) = ''
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
UPDATE tb_NhanVienQuanLy_Nhom
SET Is_Active = 0,
LastUpDate = CONVERT(char(10), GETDATE(), 112),
lastUpdateId = ' + @UserId + '
WHERE MaNhom = ' + @Nhom + ' AND MaNhanVienQuanLy = ' + @TruongNhom

EXEC sys.sp_executesql @strQuery
--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateIsOffForNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_UpdateIsOffForNgayNghi' ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_UpdateIsOffForNgayNghi'

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_UpdateIsOffForNgayNghi]

	@MaTruongNhom nvarchar(10) = '',
	@MaNV nvarchar(10) = '',
	@MaGiaoDich nvarchar(35) = ''
	
	
    
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
UPDATE chamcong
SET	chamcong.CoPhep = ''Y'',
	chamcong.LyDoNghi = nnhlct.DienGiai
FROM tb_NgayNghiHopLeChiTiet nnhlct
INNER JOIN tb_CC_ChamCong_LichLamviec chamcong
	ON chamcong.[TruongNhom-ID] = nnhlct.MaNVDuyet
	AND chamcong.[NhanVien-Id] = nnhlct.MaNVNghi
	AND chamcong.Ngay = nnhlct.NgayNghi
WHERE nnhlct.MaGiaoDich = ''' + @MaGiaoDich + '''
AND nnhlct.MaNVNghi = ' + @MaNV + '
AND nnhlct.MaNVDuyet = ' + @MaTruongNhom + '
AND (ISNULL(chamcong.L0XacNhan, 0) = 0
AND ISNULL(chamcong.L1XacNhan, 0) = 0
AND ISNULL(chamcong.L2XacNhan, 0) = 0
AND ISNULL(chamcong.L3XacNhan, 0)  =0
AND ISNULL(chamcong.L4XacNhan, 0) = 0)
AND isnull(chamcong.CoPhep,'''') <> ''Y'''


EXEC sys.sp_executesql @strQuery



--select @strQuery

END
GO
/****** Object:  StoredProcedure [dbo].[p_Update_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_Update_ChamCongLichLamViecL1] 
	-- Add the parameters for the stored procedure here
	@SysID bigint	= 0,
	@Vao_L1 varchar(6) = '',
	@Ra_L1  varchar(6) = '',
	@OTL1 varchar(3) = '',
	@Note nvarchar(2000) = '',
	@LastUpDate char(12) = '',
	@lastUpdateId varChar(6) = ''
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
DECLARE @Query nvarchar(max) = ''
DECLARE @strChuanTinhCong  varChar(255) = ''
SELECT
	@strChuanTinhCong = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'CHUAN_TINHCONG'

SET @Query = @Query + ' UPDATE tb_CC_ChamCong_LichLamviec
SET	[Vao-L1] = ''' + @Vao_L1 + ''',
	[Ra-L1] = ''' + @Ra_L1 + ''',
	OTL1 = ''' + @OTL1 + ''','

IF(@Vao_L1 <> '' and @Ra_L1 <> '')
BEGIN
SET @Query = @Query + '[DuocTinhCong] =  (CASE	WHEN DATEDIFF(MINUTE,' + @Vao_L1 + ' , ' + @Ra_L1 + ') > = ' + @strChuanTinhCong + ' THEN 1 ELSE 0 END ) ,'
 
END

SET @Query = @Query + ' Note = ''' + @Note + ''',
	LastUpDate = ''' + @LastUpDate + ''',
	lastUpdateId = ''' + @lastUpdateId + '''
WHERE SysID = ' + CAST(@SysID AS char(10))

EXEC sp_executesql @query
       
END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiTrongNam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_TaoNgayNghiTrongNam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_TaoNgayNghiTrongNam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoNgayNghiTrongNam]
@MaNgayNghi nvarchar(50) = '', 
@NgayBatDau datetime = '', 
@NgayKetThuc datetime = '', 
@MoTa nvarchar(250) = '', 
@CreaterId varchar(6) = ''

AS

BEGIN

declare @SysId int = 0;
declare @IntDiff int = 0;
declare @i int =1; 

INSERT INTO [dbo].[tb_NgayNghi]
           ([MaNgayNghi]
           ,[NgayBatDau]
           ,[NgayKetThuc]
           ,[MoTa]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
           )
     VALUES
           (@MaNgayNghi
           ,CONVERT(CHAR(8), @NgayBatDau, 112)
           ,CONVERT(CHAR(8), @NgayKetThuc, 112)
           ,@MoTa
           ,CONVERT(CHAR(8), GETDATE(), 112)
           ,@CreaterId
           ,CONVERT(CHAR(8), GETDATE(), 112)
           ,@CreaterId
           )
 SET @SysId = SCOPE_IDENTITY();          

SET @IntDiff = DATEDIFF(DAY, @NgayBatDau,@NgayKetThuc )
IF @IntDiff > 1 
	BEGIN
		WHILE @i <= @IntDiff	
			BEGIN
				INSERT INTO [dbo].[tb_NgayNghi_ChiTiet] (
					 [MaNgayNghi]
					, [Nam]
					, [Tuan]
					, [Ngay]
					, [MoTa]
					, [CreateDate]
					, [CreaterId]
					, [LastUpDate]
					, [lastUpdateId])
				SELECT
					@SysId,
					DATEPART(year, DATEADD(day,@i,@NgayBatDau)),
					CAST(DATEPART(ww, DATEADD(day,@i,@NgayBatDau)) as char(2)),
					CONVERT(CHAR(8), DATEADD(day,@i,@NgayBatDau), 112),
					@MoTa,
					CONVERT(CHAR(8), GETDATE(), 112),
					@CreaterId,
					CONVERT(CHAR(8), GETDATE(), 112),
					@CreaterId
				SET @i += 1;
			END
	END

 ELSE
	BEGIN
		 INSERT INTO [dbo].[tb_NgayNghi_ChiTiet] (
		 [MaNgayNghi]
		, [Nam]
		, [Tuan]
		, [Ngay]
		, [MoTa]
		, [CreateDate]
		, [CreaterId]
		, [LastUpDate]
		, [lastUpdateId])
	SELECT
		@SysId,
		DATEPART(YEAR, @NgayBatDau),
		DATEPART(ww, @NgayBatDau),
		CONVERT(CHAR(8), @NgayBatDau, 112),
		@MoTa,
		CONVERT(CHAR(8), GETDATE(), 112),
		@CreaterId,
		CONVERT(CHAR(8), GETDATE(), 112),
		@CreaterId
	END          
 
                       
END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiThaiSan]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_TaoNgayNghiTaiNan ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_TaoNgayNghiTaiNan

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoNgayNghiThaiSan]
@TruongNhom char(6) = ''  , 
@MaGiaoDich nvarchar(35 ) = '', 
@TuNgay datetime = null, 
@DenNgay datetime = null, 
@LyDo1 char(2  ) = '', 
@LyDo1ChiTiet nvarchar(250) = '', 
@LyDo2 char(2  ) = '', 
@LyDo2ChiTiet nvarchar(250) = '', 
@DienGiai nvarchar(250) = '',
@MaNVNghi int = 0, 
@TenNVNghi nvarchar(240) = '', 
@TenNVDuyet nvarchar(240) = '', 
@NgayDuyet char(10 ) = '', 
@Status bit = 0 

AS

BEGIN

Declare @i int = 0
Declare @DiffDayNo int = 0

INSERT INTO [dbo].tb_NgayNghiThaiSan
           ([MaGiaoDich]
           ,[TuNgay]
           ,[DenNgay]
           ,[LyDo1]
           ,[LyDo1ChiTiet]
           ,[LyDo2]
           ,[LyDo2ChiTiet]
           ,[DienGiai]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId])
     VALUES
           (
				@MaGiaoDich	,
				CONVERT(CHAR(8), @TuNgay, 112)	,
				CONVERT(CHAR(8),@DenNgay, 112)	,
				@LyDo1	,
				@LyDo1ChiTiet	,
				@LyDo2	,
				@LyDo2ChiTiet	,
				@DienGiai	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	
			)



SET @DiffDayNo = DATEDIFF(day,@TuNgay,@DenNgay)

IF @DiffDayNo > 1 
	BEGIN 
		
			WHILE @i < @DiffDayNo
				BEGIN
					INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
					   ([MaGiaoDich]
					   ,[NgayNghi]
					   ,[FromHour]
					   ,[ToHour]
					   ,[DienGiai]
					   ,[MaNVNghi]
					   ,[TenNVNghi]
					   ,[MaNVDuyet]
					   ,[TenNVDuyet]
					   ,[NgayDuyet]
					   ,[Status]
					   ,[CreateDate]
					   ,[CreaterId]
					   ,[LastUpDate]
					   ,[lastUpdateId]
					 )
						VALUES(

						@MaGiaoDich,
						CONVERT(char(10), Dateadd(day,@i,@TuNgay ), 112),
						'00:00',
						'24:00',
						@DienGiai,
						@MaNVNghi,
						@TenNVNghi,
						@TruongNhom,
						@TenNVDuyet,
						@NgayDuyet,
						@Status,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom
						)
					SET @i += 1
				END
		
		
		
		
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
           ([MaGiaoDich]
           ,[NgayNghi]
           ,[FromHour]
           ,[ToHour]
           ,[DienGiai]
           ,[MaNVNghi]
           ,[TenNVNghi]
           ,[MaNVDuyet]
           ,[TenNVDuyet]
           ,[NgayDuyet]
           ,[Status]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
         )
			VALUES(

			@MaGiaoDich,
			CONVERT(char(10), @TuNgay , 112),
			'00:00',
			'24:00',
			@DienGiai,
			@MaNVNghi,
			@TenNVNghi,
			@TruongNhom,
			@TenNVDuyet,
			@NgayDuyet,
			@Status,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom
			)
	END





END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiTaiNan]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_TaoNgayNghiTaiNan ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_TaoNgayNghiTaiNan

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoNgayNghiTaiNan]
@TruongNhom char(6) = ''  , 
@MaGiaoDich nvarchar(35 ) = '', 
@TuNgay datetime = null, 
@DenNgay datetime = null, 
@LyDo1 char(2  ) = '', 
@LyDo1ChiTiet nvarchar(250) = '', 
@LyDo2 char(2  ) = '', 
@LyDo2ChiTiet nvarchar(250) = '', 
@DienGiai nvarchar(250) = '',
@MaNVNghi int = 0, 
@TenNVNghi nvarchar(240) = '', 
@TenNVDuyet nvarchar(240) = '', 
@NgayDuyet char(10 ) = '', 
@Status bit = 0 

AS

BEGIN

Declare @i int = 0
Declare @DiffDayNo int = 0

INSERT INTO [dbo].tb_NgayNghiTaiNan
           ([MaGiaoDich]
           ,[TuNgay]
           ,[DenNgay]
           ,[LyDo1]
           ,[LyDo1ChiTiet]
           ,[LyDo2]
           ,[LyDo2ChiTiet]
           ,[DienGiai]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId])
     VALUES
           (
				@MaGiaoDich	,
				CONVERT(CHAR(8), @TuNgay, 112)	,
				CONVERT(CHAR(8),@DenNgay, 112)	,
				@LyDo1	,
				@LyDo1ChiTiet	,
				@LyDo2	,
				@LyDo2ChiTiet	,
				@DienGiai	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	
			)



SET @DiffDayNo = DATEDIFF(day,@TuNgay,@DenNgay)

IF @DiffDayNo > 1 
	BEGIN 
		
			WHILE @i < @DiffDayNo
				BEGIN
					INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
					   ([MaGiaoDich]
					   ,[NgayNghi]
					   ,[FromHour]
					   ,[ToHour]
					   ,[DienGiai]
					   ,[MaNVNghi]
					   ,[TenNVNghi]
					   ,[MaNVDuyet]
					   ,[TenNVDuyet]
					   ,[NgayDuyet]
					   ,[Status]
					   ,[CreateDate]
					   ,[CreaterId]
					   ,[LastUpDate]
					   ,[lastUpdateId]
					 )
						VALUES(

						@MaGiaoDich,
						CONVERT(char(10), Dateadd(day,@i,@TuNgay ), 112),
						'00:00',
						'24:00',
						@DienGiai,
						@MaNVNghi,
						@TenNVNghi,
						@TruongNhom,
						@TenNVDuyet,
						@NgayDuyet,
						@Status,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom
						)
					SET @i += 1
				END
		
		
		
		
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
           ([MaGiaoDich]
           ,[NgayNghi]
           ,[FromHour]
           ,[ToHour]
           ,[DienGiai]
           ,[MaNVNghi]
           ,[TenNVNghi]
           ,[MaNVDuyet]
           ,[TenNVDuyet]
           ,[NgayDuyet]
           ,[Status]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
         )
			VALUES(

			@MaGiaoDich,
			CONVERT(char(10), @TuNgay , 112),
			'00:00',
			'24:00',
			@DienGiai,
			@MaNVNghi,
			@TenNVNghi,
			@TruongNhom,
			@TenNVDuyet,
			@NgayDuyet,
			@Status,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom
			)
	END





END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiPhepChiTiet]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_TaoNgayNghiPhepChiTiet ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_TaoNgayNghiPhepChiTiet

*********************************************************************************************/

Create PROCEDURE [dbo].[p_TaoNgayNghiPhepChiTiet]

@MaGiaoDich nvarchar(35) = '',
@NgayNghi char (10)  = '',
@FromHour char (5 )  = '',
@ToHour char (5  )  = '',
@DienGiai nvarchar (500)  = '',
@MaNVNghi int  = '',
@TenNVNghi nvarchar (240)  = '',
@MaNVDuyet int   = '',
@TenNVDuyet nvarchar (240)  = '',
@NgayDuyet char (10 )  = '',
@Status bit  = '',
@CreaterId varchar (6)  = ''

AS

	
BEGIN

INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
           ([MaGiaoDich]
           ,[NgayNghi]
           ,[FromHour]
           ,[ToHour]
           ,[DienGiai]
           ,[MaNVNghi]
           ,[TenNVNghi]
           ,[MaNVDuyet]
           ,[TenNVDuyet]
           ,[NgayDuyet]
           ,[Status]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
         )
VALUES(

@MaGiaoDich,
@NgayNghi,
@FromHour,
@ToHour,
@DienGiai,
@MaNVNghi,
@TenNVNghi,
@MaNVDuyet,
@TenNVDuyet,
@NgayDuyet,
@Status,
CONVERT(char(10), GETDATE() , 112),
@CreaterId,
CONVERT(char(10), GETDATE() , 112),
@CreaterId
)

END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiPhep]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNhanVienNghiThaiSan ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNhanVienNghiThaiSan

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoNgayNghiPhep]
@TruongNhom char(6) = ''  , 
@MaGiaoDich nvarchar(35 ) = '', 
@TuNgay datetime = null, 
@DenNgay datetime = null, 
@LyDo1 char(2  ) = '', 
@LyDo1ChiTiet nvarchar(250) = '', 
@LyDo2 char(2  ) = '', 
@LyDo2ChiTiet nvarchar(250) = '', 
@DienGiai nvarchar(250) = '',
@MaNVNghi int = 0, 
@TenNVNghi nvarchar(240) = '', 
@TenNVDuyet nvarchar(240) = '', 
@NgayDuyet char(10 ) = '', 
@Status bit = 0 

AS

BEGIN

Declare @i int = 0
Declare @DiffDayNo int = 0

INSERT INTO [dbo].[tb_NgayNghiPhep]
           ([MaGiaoDich]
           ,[TuNgay]
           ,[DenNgay]
           ,[LyDo1]
           ,[LyDo1ChiTiet]
           ,[LyDo2]
           ,[LyDo2ChiTiet]
           ,[DienGiai]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId])
     VALUES
           (
				@MaGiaoDich	,
				CONVERT(CHAR(8), @TuNgay, 112)	,
				CONVERT(CHAR(8),@DenNgay, 112)	,
				@LyDo1	,
				@LyDo1ChiTiet	,
				@LyDo2	,
				@LyDo2ChiTiet	,
				@DienGiai	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	,
				CONVERT(CHAR(8), GETDATE(), 112)	,
				@TruongNhom	
			)



SET @DiffDayNo = DATEDIFF(day,@TuNgay,@DenNgay)

IF @DiffDayNo > 1 
	BEGIN 
		
			WHILE @i < @DiffDayNo
				BEGIN
					INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
					   ([MaGiaoDich]
					   ,[NgayNghi]
					   ,[FromHour]
					   ,[ToHour]
					   ,[DienGiai]
					   ,[MaNVNghi]
					   ,[TenNVNghi]
					   ,[MaNVDuyet]
					   ,[TenNVDuyet]
					   ,[NgayDuyet]
					   ,[Status]
					   ,[CreateDate]
					   ,[CreaterId]
					   ,[LastUpDate]
					   ,[lastUpdateId]
					 )
						VALUES(

						@MaGiaoDich,
						CONVERT(char(10), Dateadd(day,@i,@TuNgay ), 112),
						'00:00',
						'24:00',
						@DienGiai,
						@MaNVNghi,
						@TenNVNghi,
						@TruongNhom,
						@TenNVDuyet,
						@NgayDuyet,
						@Status,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom,
						CONVERT(char(10), GETDATE() , 112),
						@TruongNhom
						)
					SET @i += 1
				END
		
		
		
		
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[tb_NgayNghiHopLeChiTiet]
           ([MaGiaoDich]
           ,[NgayNghi]
           ,[FromHour]
           ,[ToHour]
           ,[DienGiai]
           ,[MaNVNghi]
           ,[TenNVNghi]
           ,[MaNVDuyet]
           ,[TenNVDuyet]
           ,[NgayDuyet]
           ,[Status]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
         )
			VALUES(

			@MaGiaoDich,
			CONVERT(char(10), @TuNgay , 112),
			'00:00',
			'24:00',
			@DienGiai,
			@MaNVNghi,
			@TenNVNghi,
			@TruongNhom,
			@TenNVDuyet,
			@NgayDuyet,
			@Status,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom,
			CONVERT(char(10), GETDATE() , 112),
			@TruongNhom
			)
	END





END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoNgayNghiChuNhat]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CreateNgayNghi ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_TaoNgayNghi

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoNgayNghiChuNhat]
	@TruongNhomId varchar(6) = 0,
	@Year int = 0,
	@MoTa nvarchar(250) = ''
AS
BEGIN

declare @SysId int = 0
Declare @FirstDateOfYear DATETIME,
@LastDateOfYear DATETIME
-- You can change @year to any year you desire

SELECT
	@FirstDateOfYear = DATEADD(yyyy, @Year - 1900, 0)
SELECT
	@LastDateOfYear = DATEADD(yyyy, @Year - 1900 + 1, 0)
-- Creating Query to Prepare Year Data
;
WITH cte
AS (SELECT
	1 AS DayID,
	@FirstDateOfYear AS FromDate,
	DATENAME(dw, @FirstDateOfYear) AS Dayname UNION ALL SELECT
	cte.DayID + 1 AS DayID,
	DATEADD(D, 1, cte.FromDate),
	DATENAME(dw, DATEADD(D, 1, cte.FromDate)) AS Dayname
FROM cte
WHERE DATEADD(D, 1, cte.FromDate) < @LastDateOfYear)






SELECT FromDate,
	YEAR(FromDate) AS Nam,
	DATEPART(ww, FromDate) - 1 AS Tuan,
	CONVERT(CHAR(8), FromDate, 112) AS Date,
	Dayname into ##Temp
FROM CTE
WHERE DayName LIKE 'Sunday'

OPTION (MAXRECURSION 370)


IF NOT EXISTS (SELECT
	*
FROM [tb_NgayNghi]
WHERE [NgayBatDau] = CONVERT(CHAR(8), @FirstDateOfYear, 112)
AND NgayKetThuc = CONVERT(CHAR(8), DATEADD(day,-1,@LastDateOfYear), 112)) BEGIN
INSERT INTO [dbo].[tb_NgayNghi] ([MaNgayNghi]
, [NgayBatDau]
, [NgayKetThuc]
, [MoTa]
, [CreateDate]
, [CreaterId]
, [LastUpDate]
, [lastUpdateId])

	SELECT
		N'Chủ Nhật',
		CONVERT(CHAR(8), @FirstDateOfYear, 112),
		CONVERT(CHAR(8), DATEADD(day,-1,@LastDateOfYear), 112),
		@MoTa,
		CONVERT(CHAR(8), GETDATE(), 112),
		@TruongNhomId,

		CONVERT(CHAR(8), GETDATE(), 112),
		@TruongNhomId



SELECT
	@SysId = SCOPE_IDENTITY()

INSERT INTO [dbo].[tb_NgayNghi_ChiTiet] ([MaNgayNghi]
, [Nam]
, [Tuan]
, [Ngay]
, [MoTa]
, [CreateDate]
, [CreaterId]
, [LastUpDate]
, [lastUpdateId])
	SELECT
		@SysId,
		 Nam,
		Tuan,
		Date,
		@MoTa,
		CONVERT(CHAR(8), GETDATE(), 112),
		@TruongNhomId,
		CONVERT(CHAR(8), GETDATE(), 112),
		@TruongNhomId
	FROM ##Temp
	WHERE DayName LIKE 'Sunday'

END

DROP TABLE ##Temp

END
GO
/****** Object:  StoredProcedure [dbo].[p_TaoLichLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_Get_ChamCongLichLamViecL1 ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_Get_ChamCongLichLamViecL1

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_TaoLichLamViec]
	@NhomId int = 0,
	@TenNhom nvarchar(250)= '',
	@TruongNhomId int = 0,
	@TenTruongNhom nvarchar(120) = '',
	@L0XacNhanId int = 0,
	@L0XacNhanTen nvarchar(120) = '',
	@L1XacNhanId int = 0,
	@L1XacNhanTen nvarchar(120) = '',
	@L2XacNhanId int = 0,
	@L2XacNhanTen nvarchar(120) = '',
	@L3XacNhanId int = 0,
	@L3XacNhanTen nvarchar(120) = '',
	@L4XacNhanId int = 0,
	@L4XacNhanTen nvarchar(120) = '',
	@TuanLamViec char(2) = '',
	@IsOutsource char(1) = '0'
	
AS

BEGIN

Declare @strQuery nvarchar(max) = ''

SET @strQuery = @strQuery + ' 
INSERT INTO [dbo].[tb_CC_ChamCong_LichLamviec] ([TruongNhom-ID]
, [TruongNhom-TenNgan]
, [Nhom-Id]
, [Nhom-TenNgan]
, [NhanVien-Id]
, [NhanVien-Ten]
, [NhanVien-Loai-Id]
, [Tuan]
, [Ngay]
, [Ngay_Ra]
, [Ca-Id]
, [Ca-DienGiai]
, [NgayTrongTuan]
, [IsOutSource]
, [DauDocTheVao-Id]
, [DauDocTheRa-Id]
, [CoDangKyOT]
, [L0XacNhan-Id]
, [L0XacNhan-TenNgan]
, [L0XacNhan-Date]
, [L1XacNhan-Id]
, [L1XacNhan-TenNgan]
, [L1XacNhan-Date]
, [L2XacNhan-Id]
, [L2XacNhan-TenNgan]
, [L2XacNhan-Date]
, [L3XacNhan-Id]
, [L3XacNhan-TenNgan]
, [L3XacNhan-Date]
, [L4XacNhan-Id]
, [L4XacNhan-TenNgan]
, [L4XacNhan-Date]
, [ThoiGianQuyDinhVao]
, [ThoiGianQuyDinhRa]
, [BADGENO]
, [CreateDate]
, [CreaterId]
, [LastUpDate]
, [lastUpdateId])

	SELECT
		' + CAST(@TruongNhomId AS char(10)) + ',
		''' + @TenTruongNhom + ''',
		clvn.MaNhom,
		''' + @TenNhom + ''',
		tvn.MaNhanVien,
		 tvn.Ho +''''+	tvn.Ten,
		''1'',
		''' + @TuanLamViec + ''',
		clvn.NgayVao,
		(CASE
			WHEN DATEDIFF(MINUTE, CAST(clv.GioBatDau AS time) ,CAST(''23:59'' AS time)) + 1 < 480 THEN CONVERT(char(10), DATEADD(DAY, 1, CAST(clvn.NgayVao AS datetime)), 112) ELSE clvn.NgayVao
		END),
		clvn.MaCaHeThong,
		clv.MoTa,
		clvn.ThuTrongTuan,
		n.IsOutsource,
		clvn.DauDocTheVaoId,
		clvn.DauDocTheRaId,
		clvn.IsOT,' +
CAST(@L0XacNhanId AS char(10)) + ' , ''' +
@L0XacNhanTen + ''' , CONVERT(char(10), getdate() , 112), ' +

CAST(@L1XacNhanId AS char(10)) + ' , ''' +
@L1XacNhanTen + '''  , CONVERT(char(10), getdate() , 112), ' +
CAST(@L2XacNhanId AS char(10)) + ' , ''' +
@L2XacNhanTen + '''  , CONVERT(char(10), getdate() , 112), ' +
CAST(@L3XacNhanId AS char(10)) + ' , ''' +
@L3XacNhanTen + ''' , CONVERT(char(10), getdate() , 112), ' +
CAST(@L4XacNhanId AS char(10)) + ' , ''' +
@L4XacNhanTen + '''  , CONVERT(char(10), getdate() , 112), ' + '
clv.GioBatDau,
clv.GioKetThuc,
tvn.Id_Prowatch,
CONVERT(char(10), getdate() , 112),
' + CAST(@TruongNhomId AS char(10)) + ',
CONVERT(char(10), getdate() , 112),
' + CAST(@TruongNhomId AS char(10)) +

' FROM tb_ThanhVienNhom tvn
	INNER JOIN tb_CaLamViecNhom clvn
		ON clvn.MaNhom = tvn.MaNhom
	INNER JOIN tb_Nhom n
		ON n.SysId = clvn.MaNhom
	INNER JOIN tb_CaLamViec clv
		ON clv.SysId = clvn.MaCaHeThong
	WHERE clvn.Tuan = ''' + @TuanLamViec +  '''	
	 AND clvn.MaNhom = ' +CAST(@NhomId AS char(10))+ '
	 --AND clvn.IsOff = 0 '

EXEC sys.sp_executesql @strQuery

--Cap nhat ngay nghi cho cham cong
UPDATE cc SET cc.CoPhep = 'Y',
	cc.LyDoNghi = nnhl.DienGiai
FROM tb_CC_ChamCong_LichLamviec cc
INNER JOIN tb_NgayNghiHopLeChiTiet nnhl
	ON cc.[NhanVien-Id] = nnhl.MaNVNghi
	AND cc.Ngay = nnhl.NgayNghi
	AND (ISNULL(cc.L0XacNhan, 0) = 0
	AND ISNULL(cc.L1XacNhan, 0) = 0
	AND ISNULL(cc.L2XacNhan, 0) = 0
	AND ISNULL(cc.L3XacNhan, 0) = 0
	AND ISNULL(cc.L4XacNhan, 0) = 0)
	AND isnull(cc.CoPhep,'') <> 'Y'
	AND cc.[TruongNhom-ID] = @TruongNhomId 
	AND cc.[Nhom-Id] = @NhomId

END
GO
/****** Object:  StoredProcedure [dbo].[p_Select_Param]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_Select_Param] 
	-- Add the parameters for the stored procedure here
	@ParamName varchar(50) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Param_Name]
      ,[Param_Type]
      ,[Param_Value]
      ,[Param_Group]
      ,[Status]
      ,[Description]
  FROM [dbo].[tb_Parameters]
  WHERE Param_Name = @ParamName
END
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateShiftForTeam]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CreateShiftForTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CreateShiftForTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_UpdateShiftForTeam]
	@SysId int = 0,
	@CaLamViec nvarchar(250) = '',
	@DauDocTheVao nvarchar(250) = '',
	@DauDocTheRa nvarchar(250) = '',
	@OT bit = 0,
	@PhanXuongName nvarchar(50) = ''

	
AS

BEGIN

UPDATE [dbo].[tb_CaLamViecNhom]
   SET 
      [MaCaHeThong] = (SELECT TOP 1 tb_CaLamViec.SysId FROM tb_CaLamViec WHERE MaCaLamViec = @CaLamViec)
      ,[MaCaLaViec] = @CaLamViec
      --,[DauDocTheVaoId] = @DauDocTheVao
      --,[DauDocTheRaId] = @DauDocTheRa
    
      ,[IsOT] = @OT
      ,[PhanXuongName] = @PhanXuongName
      --,[PhanXuongId] = 0
     
      ,[LastUpDate] = CONVERT(char(8), GETDATE(), 112)
   
 WHERE SysId = @SysId


END
GO
/****** Object:  StoredProcedure [dbo].[p_UpdateNhanVienCC]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_UpdateNhanVienCC]
@SysId int = 0,
	@Email nvarchar(150) = '',
	@MaNVUnilever varchar(150) = '',
	@GioiTinh Bit = 0,
	@IsDataCC Bit = 1
AS
BEGIN

UPDATE tb_NhanVien
SET	MaNVUnilever = @MaNVUnilever,
	Email = @Email,
	GioiTinh = @GioiTinh,
	IsDataCC = @IsDataCC
WHERE SysId = @SysId

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNV_User]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienToAddNVQL ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienToAddNVQL

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNV_User]
AS

BEGIN


SELECT 
u.MaNhanVien,
u.USERNAME,
nv.FNAME  ,
nv.LNAME,
nv.MaNVUnilever,
nv.CardNo,
(CASE WHEN u.LevelQuanLy = 0 THEN N'Trưởng nhóm thắng lợi'
	WHEN u.LevelQuanLy = 1 THEN N'Trưởng nhóm L1'
	WHEN u.LevelQuanLy = 2 THEN N'Trưởng nhóm L2'
	WHEN u.LevelQuanLy = 3 THEN N'Trưởng nhóm L3'
	WHEN u.LevelQuanLy = 4 THEN N'Trưởng nhóm HR'
	END ) as LevelQuanLy

 FROM FPT_ENV_AUT_USER u
INNER JOIN tb_NhanVien nv ON u.MaNhanVien = nv.SysId


END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienUser]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetNhanVienUser]
	

AS
BEGIN
SELECT
	nvu.SysId,
	nvql.Ho,
	nvql.Ten,
	nv.MaNVUnilever,
	nvu.UserName,
	nvql.Email,
	nv.GioiTinh,
	nvu.Is_Active
FROM tb_NhanVien_User nvu
INNER JOIN tb_NhanVienQuanLy nvql
	ON nvql.MaNhanVien = nvu.MaNhanVien
INNER JOIN tb_NhanVien nv
	ON nv.SysId = nvql.MaNhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[p_SearchNgayNghi]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_SearchNgayNghi ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_SearchNgayNghi

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_SearchNgayNghi]

	@Nam int = 0
AS

BEGIN

SELECT 0 as [Check] , [SysId]
      ,[MaNgayNghi]
      ,Convert(char(10),CAST([NgayBatDau] AS DATETIME), 103) AS [NgayBatDau]
      ,Convert(char(10),CAST([NgayKetThuc]AS DATETIME), 103) AS [NgayKetThuc]
      ,[MoTa]
      , [tb_NgayNghi].Is_Active
   
  FROM [dbo].[tb_NgayNghi] WHERE
  CAST(substring([NgayBatDau], 1,4) as INT) = @Nam
  OR CAST(substring([NgayKetThuc], 1,4) as INT) = @Nam

END
GO
/****** Object:  StoredProcedure [dbo].[p_RemoveNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienQuanLy ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienQuanLy

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_RemoveNhanVienQuanLy]
	@SysId int	= 0,
	@MaNhanVien int = 0,
	@UserName nvarchar(50) = '',
	@LastUpDate char(10) = '',
	@LastUpdateId char(10) = ''
AS

BEGIN

UPDATE tb_NhanVienQuanLy
SET	Is_Active = 0,
	LastUpDate = @LastUpDate,
	lastUpdateId = @LastUpdateId
WHERE SysId = @SysId

UPDATE tb_NhanVienQuanLy_Nhom
SET	Is_Active = 0,
	LastUpDate = @LastUpDate,
	lastUpdateId = @LastUpdateId
WHERE MaNhanVienQuanLy = @MaNhanVien
AND UserName = @UserName

UPDATE tb_NhanVien_User
SET	Is_Active = 0,
	LastUpDate = @LastUpDate,
	lastUpdateId = @LastUpdateId
WHERE MaNhanVien = @MaNhanVien
AND UserName = @UserName

END
GO
/****** Object:  StoredProcedure [dbo].[p_Removed_CCLichLamViecManual]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: [p_Removed_CCLichLamViecManual] ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec [p_Removed_CCLichLamViecManual]

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_Removed_CCLichLamViecManual]

	@SysId Int = 0
    
AS

BEGIN

update tb_CC_ChamCong_LichLamviec SET Is_Active = 0 where SysID = @SysId

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienQuanLy]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienQuanLy ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienQuanLy

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNhanVienQuanLy]

AS

BEGIN
SELECT
	0 AS [Check],
	nvql.SysId,
	nv.SysId AS MaNhanVien,
	nv.FNAME AS [HoNV],
	nv.LNAME AS [Ten],
	nv.MaNVUnilever,
	nv.CardNo,
	u.USERNAME,
	ur.ROLE_NAME,
	nhom.TenNhom,
	nhom.SysId as MaNhom
FROM tb_NhanVien nv
INNER JOIN tb_NhanVienQuanLy nvql
	ON nvql.MaNhanVien = nv.SysId
	AND nvql.Is_Active = 1
LEFT JOIN tb_NhanVien_User nvu
	ON nvu.MaNhanVien = nv.SysId
	AND nvu.Is_Active = 1
LEFT JOIN FPT_ENV_AUT_USER u
	ON u.USERNAME = nvu.UserName
LEFT JOIN tb_NhanVienQuanLy_Nhom nvqln
	ON nvqln.MaNhanVienQuanLy = nvql.MaNhanVien
	AND u.USERNAME = nvqln.UserName
	AND nvqln.Is_Active = 1
LEFT JOIN FPT_ENV_AUT_USERROLE ur
	ON u.UROLE_ID = ur.UROLE_ID
LEFT JOIN tb_Nhom nhom
	ON nhom.SysId = nvqln.MaNhom
WHERE nv.Is_Active = 1
AND nv.IsDataCC = 1


END
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienProWatch]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienProWatch ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNhanVienProWatch

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetNhanVienProWatch]

AS
BEGIN
DECLARE @MaxCreateDate int

SELECT
	@MaxCreateDate = MAX([CreateDate])
FROM [DMSPOP].[dbo].[tb_NgayNghi]

SELECT
	CAST(Badge.[ID] AS INT) AS ID,
	Badge.[LNAME],
	Badge.[FNAME],
	Badge.[MI],
	BadgeStatus.DESCRP AS [BADGE_STATUS],
	BadgeType.DESCRP AS [BADGE_TYPE],
	CONVERT(CHAR(10), Badge.[ISSUE_DATE], 103) AS [ISSUE_DATE],
	CONVERT(CHAR(10), Badge.[EXPIRE_DATE], 103) AS [EXPIRE_DATE],
	CAST(Badge.[TSTAMP] AS INT) AS [TSTAMP]
FROM [Prowatch].[dbo].[BADGE] Badge
	INNER JOIN [Prowatch].[dbo].[BADGE_STATUS] BadgeStatus ON BADGE_STATUS = BadgeStatus.ID
	INNER JOIN [Prowatch].[dbo].[BADGE_TYP] AS BadgeType ON BADGE_TYPE = BadgeType.ID

WHERE CAST(CONVERT(CHAR(8), ISSUE_DATE, 112) AS INT) > @MaxCreateDate
AND CAST(BADGE_STATUS AS INT) = 892154934
 AND CAST(BADGE_TYPE AS INT) IN(-1019785697, -1863175103)
END
GO
/****** Object:  StoredProcedure [dbo].[p_NgungHDNVUser]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_NgungHDNVUser]
	@SysId int = 0

AS
BEGIN
UPDATE tb_NhanVien_User SET Is_Active = 0 WHERE SysId = @SysId
END
GO
/****** Object:  StoredProcedure [dbo].[p_LuuNhanVienUser]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_LuuNhanVienUser]
		@MaNhanVien int = 0, 
		@MaNVUnilever varchar(50  ) = '', 
		@UserName varchar(20) = '', 
		@CreaterId varchar(6 ) = '' 

AS
BEGIN
	INSERT INTO [dbo].[tb_NhanVien_User]
           ([MaNhanVien]
           ,[MaNVUnilever]
           ,[UserName]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId])
    VALUES 
    (
@MaNhanVien,
@MaNVUnilever,
@UserName,
CONVERT(char(8), GETDATE(), 113),
@CreaterId,
CONVERT(char(8), GETDATE(), 113),
@CreaterId
    )
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetEmailOfLeverApprove]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetEmailOfLeverApprove] 
	@UserId	int = 0,
	@Lever Int = 0
AS
BEGIN
If @Lever = 0 
Begin
SELECT
	nv.Email, nv.FNAME + '' + nv.LNAME AS FullName
FROM tb_CapBatXacNhanChamCong cbcc
INNER JOIN tb_NhanVien nv
	ON nv.SysId = cbcc.CapI
WHERE cbcc.Cap0 = @UserId
END

If @Lever = 1 
Begin
SELECT
	nv.Email, nv.FNAME + '' + nv.LNAME AS FullName
FROM tb_CapBatXacNhanChamCong cbcc
INNER JOIN tb_NhanVien nv
	ON nv.SysId = cbcc.CapII
WHERE cbcc.CapI = @UserId
END

If @Lever = 2
Begin
SELECT
	nv.Email, nv.FNAME + '' + nv.LNAME AS FullName
FROM tb_CapBatXacNhanChamCong cbcc
INNER JOIN tb_NhanVien nv
	ON nv.SysId = cbcc.CapIII
WHERE cbcc.CapII = @UserId
END


If @Lever = 3 
Begin
SELECT
	nv.Email, nv.FNAME + '' + nv.LNAME AS FullName
FROM tb_CapBatXacNhanChamCong cbcc
INNER JOIN tb_NhanVien nv
	ON nv.SysId = cbcc.CapIV
WHERE cbcc.CapIII = @UserId
END

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetEmailNhanVien]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNgayNghiPhepInChamCong ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetNgayNghiPhepInChamCong

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetEmailNhanVien]

	@MaTruongNhom int = 0,
	@MaNV int = 0
	
    
AS

BEGIN

declare @EmailNhanVien nvarchar(120)

declare @EmailTruongNhom nvarchar(120)


SELECT @EmailNhanVien =  Email 
FROM tb_NhanVien where SysId  = @MaNV

SELECT @EmailTruongNhom = Email 
FROM tb_NhanVien where SysId  = @MaTruongNhom

SELECT @EmailNhanVien As EmailNhanVien, @EmailTruongNhom AS EmailTruongNhom

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetDauDocThe]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetDauDocThe ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetDauDocThe

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetDauDocThe]

AS

	
BEGIN
SELECT [ID]
      ,[DESCRP]
      ,[LOCATION]
      ,[HW_CLASS]
      ,[ALT_DESCRP]
      ,[PANEL]
      ,[CONFIG_TYP]
      ,[DEF_MAPID]
      ,[DEF_WAVFILE]
      ,[DEF_AVIFILE]
      ,[DEF_INTERCOM]
      ,[DEF_PAGER]
      ,[DEF_EMAIL]
      ,[DEF_AUTO_CCTV_VIEW]
      ,[DEF_AUTO_CCTV_CMD]
      ,[DEF_SEL_CCTV_VIEW]
      ,[DEF_SEL_CCTV_CMD]
      ,[SITE]
      ,[ELV_UNL_CC]
      ,[TSTAMP]
  FROM [dbo].[LOGICAL_DEV]
  
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetCaLamViec]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetCaLamViec ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetCaLamViec

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetCaLamViec]

AS

	
BEGIN
SELECT [SysId]  AS MaCaHeThong
      ,[MaCaLamViec]
      ,[GioBatDau]
      ,[GioKetThuc]
      ,[ThoiGianLamViec]
      ,[MoTa]
      ,[CreateDate]
      ,[CreaterId]
      ,[LastUpDate]
      ,[lastUpdateId]
      ,[Is_Active]
  FROM [dbo].[tb_CaLamViec]
  
END
GO
/****** Object:  StoredProcedure [dbo].[p_InsertNhanVien]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_InsertNhanVien ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_InsertNhanVien

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_InsertNhanVien]
	@SysId int	= 0
AS
BEGIN
DECLARE @MaxCreateDate int

SELECT
	@MaxCreateDate = MAX([CreateDate])
FROM [DMSPOP].[dbo].[tb_NgayNghi]


INSERT INTO [DMSPOP].[dbo].[tb_NhanVien] (
[ID_Prowatch]
, [LNAME]
, [FNAME]
, [MI]
, [BADGE_STATUS]
, [BADGE_TYPE]
, [ISSUE_DATE]
, [EXPIRE_DATE]
, [CreateDate]
, [CreaterId]
, [LastUpDate]
, [lastUpdateId]
, IsOutsource
,OutsourceId
, BADGE_STATUS_DESC
, BADGE_TYPE_DESC
)

	SELECT
		Badge.[ID],
		Badge.[LNAME],
		Badge.[FNAME],
		Badge.[MI],
		Badge.[BADGE_STATUS],
		Badge.[BADGE_TYPE],
		Badge.[ISSUE_DATE],
		Badge.[EXPIRE_DATE],
		CONVERT(CHAR(8), GETDATE(), 112),
		@SysId,
		CONVERT(CHAR(8), GETDATE(), 112),
		@SysId,
		(CASE WHEN CAST(BADGE_TYPE AS INT) =-1019785697 THEN 0	ELSE 1 END ) AS IsOutsource
		, (CASE WHEN CAST(BADGE_TYPE AS INT) =-1019785697 THEN 0	ELSE 1 END ) AS OutsourceID
		, BadgeStatus.DESCRP
		, BadgeType.DESCRP
	FROM [Prowatch].[dbo].[BADGE] Badge
	INNER JOIN [Prowatch].[dbo].[BADGE_STATUS] BadgeStatus ON BADGE_STATUS = BadgeStatus.ID
	INNER JOIN [Prowatch].[dbo].[BADGE_TYP] AS BadgeType ON BADGE_TYPE = BadgeType.ID
	WHERE CAST(CONVERT(CHAR(8), ISSUE_DATE, 112) AS INT) > @MaxCreateDate
		AND CAST(BADGE_STATUS AS INT) = 892154934
		 AND CAST(BADGE_TYPE AS INT) IN(-1019785697, -1863175103)
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetUserAvailible]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_GetNhanVienQuanLy ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_GetUserAvailible

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_GetUserAvailible]

AS

BEGIN

SELECT
	u.USERNAME,
	ur.ROLE_NAME
FROM FPT_ENV_AUT_USER u
LEFT JOIN FPT_ENV_AUT_USERROLE ur
	ON ur.UROLE_ID = u.UROLE_ID
LEFT JOIN tb_NhanVien_User nvu
	ON nvu.UserName = u.USERNAME
	AND nvu.Is_Active = 1
WHERE nvu.SysId IS NULL

END
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatchL0]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetTSFromProwatchL0] 
	-- Add the parameters for the stored procedure here

	@LastUpDate char(12) = '',
	@lastUpdateId varChar(6) = '',
	
	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(6) = '',
    @Ca char(3) = '',
	@Nhom_Id varchar(6) = ''
	
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
declare @query nvarchar(max) = ''

DECLARE @strHanChotDiTre varChar(255) = ''
DECLARE @strHanChotVeSom  varChar(255) = ''
 
DECLARE @strChuanTinhCong  varChar(255) = ''
 
DECLARE @strHanMucTinhOt  varChar(255) = ''
SELECT
	@strHanChotDiTre = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_DITRE'
SELECT
	@strHanChotVeSom = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_VESOM'
SELECT
	@strChuanTinhCong = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'CHUAN_TINHCONG'
SELECT
	@strHanMucTinhOt = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_MUC_TINH_OT'


SET @strHanChotDiTre = dbo.GetParamValue(@strHanChotDiTre)
SET @strHanChotVeSom = dbo.GetParamValue(@strHanChotVeSom)
SET @strChuanTinhCong = dbo.GetParamValue(@strChuanTinhCong)
SET @strHanMucTinhOt = dbo.GetParamValue(@strHanMucTinhOt)


---created temp table to prepare data-----
SET @query = @query + ' SELECT
	ev.RID,
	ev.REC_DAT,
	ev.LOGDEVID,
	CONVERT(CHAR(10), ev.REC_DAT, 112) AS TimesheetDate,
	CONVERT(CHAR(5), ev.REC_DAT, 114) AS [Hours],
	ev.BADGENO,
	ev.CARDNO INTO #TmpEvLog
FROM tb_ev_log ev
INNER JOIN tb_CC_ChamCong_LichLamviec cc ON cc.BADGENO = ev.BADGENO 
/*AND cc.CARDNO = ev.CARDNO*/
AND cc.DaLayDuLieuChamCong = 0 
AND CONVERT(CHAR(10), ev.REC_DAT, 112) = cc.Ngay
WHERE EVENT_GUID <> ''x''
AND ISNULL(CAST(ev.BADGENO AS INT), 0) <> 0
AND ISNULL(ev.CARDNO, '''') <> ''''
AND ISNULL(CoPhep, '''') = '''' AND IsOutSource = 1 
'

IF(@Tuan <> '') 
Begin
SET @query = @query + ' AND cc.Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc.Ngay AS int) >= ' + @TuNgay
 
END


IF(@DenNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc.Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
SET @query = @query + ' AND [TruongNhom-ID] = ' + @MaTruongNhom
 
END

IF(@Ca <> '') 
Begin
SET @query = @query + ' AND cc.[Ca-Id] = ''' + @Ca + ''''
END
IF(@Nhom_Id  <> '') 
BEGIN
SET @query = @query + ' AND cc.[Nhom-Id]  = ''' + @Nhom_Id + ''''
END


---Build updated data for table dbo.tb_CC_ChamCong_LichLamviec---

SET @query = @query + '
UPDATE tb_CC_ChamCong_LichLamviec
SET Vao = CAST (vao1.HOURS AS char(7)),
Ra = CAST( Ra1.HOURS AS char(7)),
[Vao-L1] = CAST (vao1.HOURS AS char(7)),
[Ra-L1] = CAST( Ra1.HOURS AS char(7)),
[On_Off] = (CASE WHEN vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL THEN ''On''
ELSE ''Off'' END ),
[DuocTinhCong] = 
(CASE
		WHEN vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL THEN
		 (CASE	WHEN DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) > = ' + @strChuanTinhCong + ' THEN 1 ELSE 0 END )
		 ELSE
		  0
	END),
OTHeThongTinh = (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS is NOT NULL AND Ra1.HOURS IS NOT NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - ' + @strChuanTinhCong + ' ELSE NULL END),
OTL1 =  (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - ' + @strChuanTinhCong + ' ELSE NULL END),
DaLayDuLieuChamCong = 1
FROM tb_CC_ChamCong_LichLamviec cc1
LEFT JOIN (SELECT
	chamCong.SysID,
	MIN(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong
LEFT JOIN #TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	/*AND evLog.CARDNO = chamCong.CARDNO*/
	AND CONVERT(CHAR(10), chamCong.Ngay, 112) = evLog.TimesheetDate
	AND chamCong.[DauDocTheVao-Id] = evLog.LOGDEVID
	AND evLog.[Hours] BETWEEN DATEADD(MINUTE, 0 - ' + @strHanChotDiTre + ', CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
	AND DATEADD(MINUTE, ' + @strHanChotDiTre + ', CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
GROUP BY chamCong.SysID) AS Vao1
	ON cc1.SysID = vao1.SysID
LEFT JOIN (SELECT
	chamCong.SysID,
	MAX(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong
LEFT JOIN #TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	/*AND evLog.CARDNO = chamCong.CARDNO*/
	AND  chamCong.Ngay_Ra = evLog.TimesheetDate
	AND chamCong.[DauDocTheRa-Id] = evLog.LOGDEVID
	AND evLog.[Hours] BETWEEN
	DATEADD(MINUTE, 0 - ' + @strHanChotVeSom + ', (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, ' + @strHanMucTinhOt + ', CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
	AND DATEADD(MINUTE, ' + @strHanChotVeSom + ', (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, ' + @strHanMucTinhOt + ', CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
GROUP BY chamCong.SysID) AS Ra1
	ON Ra1.SysID = cc1.SysID
WHERE cc1.DaLayDuLieuChamCong = 0 
AND ISNULL(CoPhep, '''') = '''' and IsOutSource = 1 
'

IF(@Tuan <> '') 
Begin
SET @query = @query + ' AND cc1.Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc1.Ngay AS int) >= ' + @TuNgay
 
END


IF(@DenNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc1.Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
SET @query = @query + ' AND cc1.[TruongNhom-ID] = ' + @MaTruongNhom
 
END

IF(@Ca <> '') 
Begin
SET @query = @query + ' AND cc1.[Ca-Id] = ''' + @Ca + ''''
END
IF(@Nhom_Id  <> '') 
BEGIN
SET @query = @query + ' AND cc1.[Nhom-Id]  = ''' + @Nhom_Id + ''''
END



SET @query = @query + 'UPDATE tb_ev_log
SET EVENT_GUID = ''x''
FROM tb_ev_log ev
INNER JOIN #TmpEvLog
	ON #TmpEvLog.RID = ev.RID

UPDATE tb_CC_ChamCong_LichLamviec
SET DuocTinhCong = 1
WHERE ISNULL(CoPhep, '''') = ''Y'' and IsOutSource = 1


UPDATE tb_CC_ChamCong_LichLamviec
SET DaLayDuLieuChamCong = 1 
WHERE  CAST(Ngay AS INT) >= ' + @TuNgay + '
AND CAST(Ngay AS INT) <=  ' + @DenNgay + ' 
 and IsOutSource = 1


DROP TABLE #TmpEvLog '

--SELECT
--	@query
EXEC sp_executesql @query
   
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatch_ChamCongLichLamViecL1]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetTSFromProwatch_ChamCongLichLamViecL1] 
	-- Add the parameters for the stored procedure here
	@lstSysID nvarchar(max)	= '',
	@LastUpDate char(12) = '',
	@lastUpdateId varChar(6) = ''
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
declare @query nvarchar(max) = ''

DECLARE @strHanChotDiTre varChar(255) = ''
DECLARE @strHanChotVeSom  varChar(255) = ''
 
DECLARE @strChuanTinhCong  varChar(255) = ''
 
DECLARE @strHanMucTinhOt  varChar(255) = ''
SELECT
	@strHanChotDiTre = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_DITRE'
SELECT
	@strHanChotVeSom = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_VESOM'
SELECT
	@strChuanTinhCong = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'CHUAN_TINHCONG'
SELECT
	@strHanMucTinhOt = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_MUC_TINH_OT'


DECLARE @HanChotDiTre int  = dbo.GetParamValue(@strHanChotDiTre)
DECLARE @HanChotVeSom int   = dbo.GetParamValue(@strHanChotVeSom)
DECLARE @ChuanTinhCong int   = dbo.GetParamValue(@strChuanTinhCong)
DECLARE @HanMucTinhOt int   = dbo.GetParamValue(@strHanMucTinhOt)

SELECT
	@HanChotDiTre
SELECT
	@HanChotVeSom
SELECT
	@ChuanTinhCong
SELECT
	@HanMucTinhOt


SELECT
	ev.RID,
	ev.REC_DAT,
	CONVERT(CHAR(10), ev.REC_DAT, 112) AS TimesheetDate,
	CONVERT(CHAR(5), ev.REC_DAT, 114) AS [Hours],
	ev.BADGENO,
	ev.CARDNO INTO ##TmpEvLog
FROM tb_ev_log ev
WHERE EVENT_GUID <> 'x'
AND ISNULL(CAST(ev.BADGENO AS INT), 0) <> 0
AND ISNULL(ev.CARDNO, '') <> ''


UPDATE tb_CC_ChamCong_LichLamviec
SET Vao = CAST (vao1.HOURS AS char(7)),
Ra = CAST( Ra1.HOURS AS char(7)),
[Vao-L1] = CAST (vao1.HOURS AS char(7)),
[Ra-L1] = CAST( Ra1.HOURS AS char(7))
, On_Off = (CASE WHEN vao1.HOURS IS NULL OR Ra1.HOURS IS NULL THEN 'Off'
WHEN DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) >= @ChuanTinhCong THEN 'On'
ELSE 'Off' END ),
OTHeThongTinh = (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS is NOT NULL AND Ra1.HOURS IS not NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - @ChuanTinhCong ELSE NULL END),
OTL1 =  (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS is NOT NULL AND Ra1.HOURS IS not NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - @ChuanTinhCong ELSE NULL END),
 DaLayDuLieuChamCong = 1

FROM tb_CC_ChamCong_LichLamviec cc1
LEFT JOIN (SELECT
	chamCong.SysID,
	MIN(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong
LEFT JOIN ##TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	AND evLog.CARDNO = chamCong.CARDNO
	AND CONVERT(CHAR(10), chamCong.Ngay, 112) = evLog.TimesheetDate
	AND evLog.[Hours] BETWEEN DATEADD(MINUTE, 0 - @HanChotDiTre, CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
	AND DATEADD(MINUTE, @HanChotDiTre, CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
GROUP BY chamCong.SysID) AS Vao1
	ON cc1.SysID = vao1.SysID
LEFT JOIN (SELECT
	chamCong.SysID,
	MAX(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong
LEFT JOIN ##TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	AND evLog.CARDNO = chamCong.CARDNO
	AND CONVERT(CHAR(10), chamCong.Ngay, 112) = evLog.TimesheetDate
	AND evLog.[Hours] BETWEEN
	DATEADD(MINUTE, 0 - @HanChotVeSom, (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, @HanMucTinhOt, CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
	AND DATEADD(MINUTE, @HanChotVeSom, (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, @HanMucTinhOt, CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
GROUP BY chamCong.SysID) AS Ra1
	ON Ra1.SysID = cc1.SysID
WHERE cc1.DaLayDuLieuChamCong = 0 
and	cc1.SysID IN (1) 

DROP TABLE ##TmpEvLog

set @query = 'UPDATE tb_CC_ChamCong_LichLamviec
SET	DaLayDuLieuChamCong = 1,
	LastUpDate = ''' +  @LastUpDate + ''' ' + 
	',lastUpdateId = '''  + @lastUpdateId +  ''' ' + 
'WHERE SysID IN (' + @lstSysID + ')'
 EXEC sp_executesql @query   
END
GO
/****** Object:  StoredProcedure [dbo].[p_GetTSFromProwatch]    Script Date: 03/11/2015 00:55:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_GetTSFromProwatch] 
	-- Add the parameters for the stored procedure here

	@LastUpDate char(12) = '',
	@lastUpdateId varChar(6) = '',
	
	@Tuan char(2) = '',
	@TuNgay char(12) = '',
	@DenNgay char(12) = '',
	@MaTruongNhom varchar(6) = '',
    @Ca char(3) = '',
	@Nhom_Id varchar(6) = ''
	
AS
BEGIN
-- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET NOCOUNT ON;
declare @query nvarchar(max) = ''

DECLARE @strHanChotDiTre varChar(255) = ''
DECLARE @strHanChotVeSom  varChar(255) = ''
 
DECLARE @strChuanTinhCong  varChar(255) = ''
 
DECLARE @strHanMucTinhOt  varChar(255) = ''
SELECT
	@strHanChotDiTre = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_DITRE'
SELECT
	@strHanChotVeSom = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_CHOT_VESOM'
SELECT
	@strChuanTinhCong = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'CHUAN_TINHCONG'
SELECT
	@strHanMucTinhOt = Param_Value
FROM tb_Parameters
WHERE Param_Name = 'HAN_MUC_TINH_OT'


SET @strHanChotDiTre = dbo.GetParamValue(@strHanChotDiTre)
SET @strHanChotVeSom = dbo.GetParamValue(@strHanChotVeSom)
SET @strChuanTinhCong = dbo.GetParamValue(@strChuanTinhCong)
SET @strHanMucTinhOt = dbo.GetParamValue(@strHanMucTinhOt)


---created temp table to prepare data-----
SET @query = @query + ' SELECT
	ev.RID,
	ev.REC_DAT,
	ev.LOGDEVID,
	CONVERT(CHAR(10), ev.REC_DAT, 112) AS TimesheetDate,
	CONVERT(CHAR(5), ev.REC_DAT, 114) AS [Hours],
	ev.BADGENO,
	ev.CARDNO INTO #TmpEvLog
FROM tb_ev_log ev
INNER JOIN tb_CC_ChamCong_LichLamviec cc ON cc.BADGENO = ev.BADGENO 
/*AND cc.CARDNO = ev.CARDNO*/
AND cc.DaLayDuLieuChamCong = 0 
AND CONVERT(CHAR(10), ev.REC_DAT, 112) = cc.Ngay
WHERE EVENT_GUID <> ''x''
AND ISNULL(CAST(ev.BADGENO AS INT), 0) <> 0
AND ISNULL(ev.CARDNO, '''') <> ''''
AND Isnull(LyDoNghi,'''') = '''' AND IsOutSource = 0 
'

IF(@Tuan <> '') 
Begin
SET @query = @query + ' AND cc.Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc.Ngay AS int) >= ' + @TuNgay
 
END


IF(@DenNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc.Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
SET @query = @query + ' AND [TruongNhom-ID] = ' + @MaTruongNhom
 
END

IF(@Ca <> '') 
Begin
SET @query = @query + ' AND cc.[Ca-Id] = ''' + @Ca + ''''
END
IF(@Nhom_Id  <> '') 
BEGIN
SET @query = @query + ' AND cc.[Nhom-Id]  = ''' + @Nhom_Id + ''''
END


---Build updated data for table dbo.tb_CC_ChamCong_LichLamviec---

SET @query = @query + '
UPDATE tb_CC_ChamCong_LichLamviec
SET Vao = CAST (vao1.HOURS AS char(7)),
Ra = CAST( Ra1.HOURS AS char(7)),
[Vao-L1] = CAST (vao1.HOURS AS char(7)),
[Ra-L1] = CAST( Ra1.HOURS AS char(7)),
[On_Off] = (CASE WHEN vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL THEN ''On''
ELSE ''Off'' END ),
[DuocTinhCong] = 
(CASE
		WHEN vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL THEN
		 (CASE	WHEN DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) > = ' + @strChuanTinhCong + ' THEN 1 ELSE 0 END )
		 ELSE
		  0
	END),
OTHeThongTinh = (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS is NOT NULL AND Ra1.HOURS IS NOT NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - ' + @strChuanTinhCong + ' ELSE NULL END),
OTL1 =  (CASE WHEN cc1.CoDangKyOT = 1 AND vao1.HOURS IS NOT NULL AND Ra1.HOURS IS NOT NULL 
 THEN  DATEDIFF(MINUTE, vao1.HOURS, Ra1.HOURS) - ' + @strChuanTinhCong + ' ELSE NULL END),
DaLayDuLieuChamCong = 1
FROM tb_CC_ChamCong_LichLamviec cc1
LEFT JOIN (SELECT
	chamCong.SysID,
	MIN(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong

LEFT JOIN #TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	/*AND evLog.CARDNO = chamCong.CARDNO*/
	AND CONVERT(CHAR(10), chamCong.Ngay, 112) = evLog.TimesheetDate
	AND evLog.[Hours] BETWEEN DATEADD(MINUTE, 0 - ' + @strHanChotDiTre + ', CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
	AND DATEADD(MINUTE, ' + @strHanChotDiTre + ', CAST(chamCong.ThoiGianQuyDinhVao AS TIME))
GROUP BY chamCong.SysID  ) AS Vao1
	ON cc1.SysID = vao1.SysID
	
LEFT JOIN (SELECT
	chamCong.SysID,
	MAX(evLog.[hours]) AS [HOURS]
FROM tb_CC_ChamCong_LichLamviec chamCong
LEFT JOIN #TmpEvLog evLog
	ON evLog.BADGENO = chamCong.BADGENO
	/*AND evLog.CARDNO = chamCong.CARDNO*/
	AND  chamCong.Ngay_Ra = evLog.TimesheetDate
	AND evLog.[Hours] BETWEEN
	DATEADD(MINUTE, 0 - ' + @strHanChotVeSom + ', (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, ' + @strHanMucTinhOt + ', CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
	AND DATEADD(MINUTE, ' + @strHanChotVeSom + ', (CASE
		WHEN chamCong.CoDangKyOT = 1 THEN DATEADD(MINUTE, ' + @strHanMucTinhOt + ', CAST(chamCong.ThoiGianQuyDinhRa AS TIME))
		ELSE CAST(chamCong.ThoiGianQuyDinhRa AS TIME)
	END))
GROUP BY chamCong.SysID  ) AS Ra1
	ON Ra1.SysID = cc1.SysID
WHERE cc1.DaLayDuLieuChamCong = 0 
AND Isnull(LyDoNghi,'''') = '''' AND IsOutSource = 0
'

IF(@Tuan <> '') 
Begin
SET @query = @query + ' AND cc1.Tuan = ''' + @Tuan + ''' '
END

  IF(@TuNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc1.Ngay AS int) >= ' + @TuNgay
 
END


IF(@DenNgay <> '') 
Begin
SET @query = @query + ' AND CAST(cc1.Ngay AS int) <= ' + @DenNgay
END

IF(@MaTruongNhom <> '') 
Begin
SET @query = @query + ' AND cc1.[TruongNhom-ID] = ' + @MaTruongNhom
 
END

IF(@Ca <> '') 
Begin
SET @query = @query + ' AND cc1.[Ca-Id] = ''' + @Ca + ''''
END
IF(@Nhom_Id  <> '') 
BEGIN
SET @query = @query + ' AND cc1.[Nhom-Id]  = ''' + @Nhom_Id + ''''
END



SET @query = @query + 'UPDATE tb_ev_log
SET EVENT_GUID = ''x''
FROM tb_ev_log ev
INNER JOIN #TmpEvLog
	ON #TmpEvLog.RID = ev.RID

UPDATE tb_CC_ChamCong_LichLamviec
SET DuocTinhCong = 1
WHERE ISNULL(CoPhep, '''') = ''Y''
AND CAST(Ngay AS INT) >= '+ @TuNgay + '
AND CAST(Ngay AS INT) <=  ' + @DenNgay + ' 
 and IsOutSource = 0


UPDATE tb_CC_ChamCong_LichLamviec
SET DaLayDuLieuChamCong = 1 
WHERE  CAST(Ngay AS INT) >= ' + @TuNgay + '
AND CAST(Ngay AS INT) <=  ' + @DenNgay + ' 
 and IsOutSource = 0


DROP TABLE #TmpEvLog '

SELECT
	@query
EXEC sp_executesql @query
   
END
GO
