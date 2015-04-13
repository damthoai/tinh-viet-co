USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNhanVienToAddNVQL]    Script Date: 03/10/2015 22:34:57 ******/
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

