
USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_GetNvQuanlyLevel3Available]    Script Date: 03/09/2015 20:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[p_AddL3ToL4]
	-- Add the parameters for the stored procedure here
	
@ParentId varchar(20) = '',
@Parent_Level int = '',
@ChildId varchar(20) = '',
@Child_Level int = '',
@CreaterId int = 0,
@Is_Active bit = 1
AS
BEGIN
INSERT INTO [dbo].[tb_CapBatNhanVien]
           ([ParentId]
           ,[Parent_Level]
           ,[ChildId]
           ,[Child_Level]
           ,[CreateDate]
           ,[CreaterId]
           ,[LastUpDate]
           ,[lastUpdateId]
           ,[Is_Active])
     VALUES
 (
 @ParentId ,
@Parent_Level ,
@ChildId ,
@Child_Level ,
CONVERT(CHAR(8), GETDATE(), 112),
@CreaterId ,
CONVERT(CHAR(8), GETDATE(), 112) ,
@CreaterId ,
@Is_Active 
 )



END