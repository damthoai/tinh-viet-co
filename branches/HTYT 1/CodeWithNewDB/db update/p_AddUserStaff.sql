-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE p_AddUserStaff
	-- Add the parameters for the stored procedure here
	@USERNAME  varchar(20)  = '',
@PASSWORD  varchar(255)  = '',
@FIRSTNAME  nvarchar(50)  = '',
@LASTNAME  nvarchar(50)  = '',
@EMAIL  varchar(50)  = '',
@ADDRESS  nvarchar(255)  = '',
@PHONE  varchar(50)  = '',
@START_DATE  datetime  = '',
@END_DATE  datetime  = '',
@PWD_CHG_DATE  datetime  = '',
@STATUS  char(2)  = '',
@UROLE_ID  varchar(14)  = '',
@DESCRIPTION  nvarchar(255)  = '',
@MaNhanVien  int  = '',
@MaNVUnilever  varchar(50)  = '',
@CardNo  char(250)  = '',
@MI  nvarchar(120)  = '',
@GioiTinh  char(1)  = '',
@LevelQuanLy  int  = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
INSERT INTO [HTCC].[dbo].[FPT_ENV_AUT_USER]
           ([USERNAME]
           ,[PASSWORD]
           ,[FIRSTNAME]
           ,[LASTNAME]
           ,[EMAIL]
           ,[ADDRESS]
           ,[PHONE]
           ,[START_DATE]
           ,[END_DATE]
           ,[PWD_CHG_DATE]
           ,[STATUS]
           ,[UROLE_ID]
           ,[DESCRIPTION]
           ,[MaNhanVien]
           ,[MaNVUnilever]
           ,[CardNo]
           ,[MI]
           ,[GioiTinh]
           ,[LevelQuanLy])
     VALUES
           (
           @USERNAME  ,
@PASSWORD  ,
@FIRSTNAME  ,
@LASTNAME  ,
@EMAIL  ,
@ADDRESS  ,
@PHONE  ,
@START_DATE  ,
@END_DATE  ,
@PWD_CHG_DATE  ,
@STATUS  ,
@UROLE_ID  ,
@DESCRIPTION  ,
@MaNhanVien  ,
@MaNVUnilever  ,
@CardNo  ,
@MI ,
@GioiTinh  ,
@LevelQuanLy  
           )
END
GO
