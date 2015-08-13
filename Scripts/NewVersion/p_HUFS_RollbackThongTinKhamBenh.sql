

/****** Object:  StoredProcedure [dbo].[p_HUFS_RollbackThongTinKhamBenh]    Script Date: 08/13/2015 17:32:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_RollbackThongTinKhamBenh]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_RollbackThongTinKhamBenh]
GO



/****** Object:  StoredProcedure [dbo].[p_HUFS_RollbackThongTinKhamBenh]    Script Date: 08/13/2015 17:32:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[p_HUFS_RollbackThongTinKhamBenh] 
(
	@MaKhamBenh varchar(50)
)
AS
BEGIN
	DELETE FROM HUFS_TRANSACTION WHERE MaKhamBenh = @MaKhamBenh
	DELETE FROM HUFS_KHAMBENH_DETAIL WHERE MaKhamBenh = @MaKhamBenh
	DELETE FROM HUFS_KHAMBENH_HEADER WHERE MaKhamBenh = @MaKhamBenh
END





GO


