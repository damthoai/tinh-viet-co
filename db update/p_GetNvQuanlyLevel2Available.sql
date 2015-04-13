USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel3Available]    Script Date: 03/09/2015 21:45:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[p_GetNvQuanlyLevel2Available]
	-- Add the parameters for the stored procedure here
	@USERNAME varchar(20)  = '',
	@FIRSTNAME nvarchar(50) = '',
	@LASTNAME nvarchar(50) = '',
	@MaNVUnilever varchar(50)= '',
	@CardNo char(256) = ''
AS
BEGIN
SET @USERNAME = REPLACE(REPLACE(@USERNAME, '''',''''''),'*', '%')
SET @FIRSTNAME = REPLACE(REPLACE(@FIRSTNAME, '''',''''''),'*', '%')
SET @LASTNAME = REPLACE(REPLACE(@LASTNAME, '''',''''''),'*', '%')
SET @MaNVUnilever = REPLACE(REPLACE(@MaNVUnilever, '''',''''''),'*', '%')
SET @CardNo = REPLACE(REPLACE(@CardNo, '''',''''''),'*', '%')


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
		SET @query = @query + ' AND u.USERNAME like '''+ @USERNAME + ''''	
	END			
IF @FIRSTNAME <> '' AND @FIRSTNAME <> '''''' AND @FIRSTNAME <> '%' AND @FIRSTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.FIRSTNAME like '''+ @FIRSTNAME + ''''
	
	END			

IF @LASTNAME <> '' AND @LASTNAME <> '''''' AND @LASTNAME <> '%' AND @LASTNAME <> '%%'
	BEGIN
		SET @query = @query + ' AND u.LASTNAME like '''+ @LASTNAME + ''''
	
	END		
IF @MaNVUnilever <> '' AND @MaNVUnilever <> '''''' AND @MaNVUnilever <> '%' AND @MaNVUnilever <> '%%'
	BEGIN
		SET @query = @query + ' AND u.MaNVUnilever like '''+ @MaNVUnilever + ''''
	
	END		
IF @CardNo <> '' AND @CardNo <> '''''' AND @CardNo <> '%' AND @CardNo <> '%%'
	BEGIN
		SET @query = @query + ' AND u.CardNo like '''+ @CardNo + ''''
	
	END			

EXEC sys.sp_executesql @query
select @Query

			
END
