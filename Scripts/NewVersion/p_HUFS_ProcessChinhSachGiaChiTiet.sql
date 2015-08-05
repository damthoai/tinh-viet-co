/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChinhSachGiaChiTiet]    Script Date: 07/11/2015 11:11:25 ******/
IF EXISTS (
		SELECT *
		FROM sys.objects
		WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_ProcessChinhSachGiaChiTiet]')
			AND type IN (
				N'P'
				,N'PC'
				)
		)
	DROP PROCEDURE [dbo].[p_HUFS_ProcessChinhSachGiaChiTiet]
GO

/****** Object:  StoredProcedure [dbo].[p_HUFS_ProcessChinhSachGiaChiTiet]    Script Date: 07/11/2015 11:11:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*
EXEC p_HUFS_ProcessChinhSachGiaChiTiet @ListTransaction NVARCHAR(MAX)
*/
CREATE PROCEDURE [dbo].[p_HUFS_ProcessChinhSachGiaChiTiet] @Id BIGINT
	,@MaChinhSachGia NVARCHAR(20)
	,@TenChinhSachGia NVARCHAR(500)
	,@MedicineID NVARCHAR(50)
	,@MedicineName NVARCHAR(500)
	,@GiaDNMua MONEY
	,@GiaDNMuaVAT MONEY
	,@GiaThucMua MONEY
	,@GiaDNBan MONEY
	,@GiaDNBanVAT MONEY
	,@GiaThucBan MONEY
	,@MaThuocYTeHienThi NVARCHAR(500)
	,@BaoHiem BIT
	,@DonViTinh INT
	,@DienGiai NVARCHAR(500)
	,@HoatDong BIT
AS
BEGIN
	IF @Id = 0
	BEGIN
		INSERT INTO [HUFS_CHINHSACH_DETAIL] (
			[MaChinhSachGia]
			,[TenChinhSachGia]
			,[MedicineID]
			,[MedicineName]
			,[GiaDNMua]
			,[GiaDNMuaVAT]
			,[GiaThucMua]
			,[GiaDNBan]
			,[GiaDNBanVAT]
			,[GiaThucBan]
			,[MaThuocYTeHienThi]
			,[BaoHiem]
			,[DonViTinh]
			,[DienGiai]
			,[HoatDong]
			)
		VALUES (
			@MaChinhSachGia
			,@TenChinhSachGia
			,@MedicineID
			,@MedicineName
			,@GiaDNMua
			,@GiaDNMuaVAT
			,@GiaThucMua
			,@GiaDNBan
			,@GiaDNBanVAT
			,@GiaThucBan
			,@MaThuocYTeHienThi
			,@BaoHiem
			,@DonViTinh
			,@DienGiai
			,@HoatDong
			)
	END
	ELSE
	BEGIN
		UPDATE [HUFS_CHINHSACH_DETAIL]
		SET [MaChinhSachGia] = @MaChinhSachGia
			,[TenChinhSachGia] = @TenChinhSachGia
			,[MedicineID] = @MedicineID
			,[MedicineName] = @MedicineName
			,[GiaDNMua] = @GiaDNMua
			,[GiaDNMuaVAT] = GiaDNMuaVAT
			,[GiaThucMua] = @GiaThucMua
			,[GiaDNBan] = @GiaDNBan
			,[GiaDNBanVAT] = @GiaDNBanVAT
			,[GiaThucBan] = @GiaThucBan
			,[MaThuocYTeHienThi] = @MaThuocYTeHienThi
			,[BaoHiem] = @BaoHiem
			,[DonViTinh] = @DonViTinh
			,[DienGiai] = @DienGiai
			,[HoatDong] = @HoatDong
		WHERE Id = @Id
		
		
	END
END
GO


