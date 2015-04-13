USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvL3InL4]    Script Date: 03/09/2015 21:43:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[p_GetNvL2InL3]
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
