

/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThuocExist]    Script Date: 06/04/2015 20:09:04 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_CheckThuocExist]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_CheckThuocExist]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_CheckThuocExist]    Script Date: 06/04/2015 20:09:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--p_HUFS_CheckThuocExist 'ME0000000001',90 ,'Phòng Khám Khu B'
CREATE PROC [dbo].[p_HUFS_CheckThuocExist] (
	@MaThuocYTe VARCHAR(50)
	,@BaoHiem BIT
	)
AS
BEGIN
	DECLARE @Result INT = 0
	
	IF exists (SELECT 1 FROM HUFS_MEDICINE WHERE MaThuocYTe = @MaThuocYTe AND BaoHiem = @BaoHiem)
	BEGIN
		SET @Result = 1
	END
	SELECT @Result AS Result
END
GO


