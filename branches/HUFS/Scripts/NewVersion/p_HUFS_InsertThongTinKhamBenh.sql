
/****** Object:  StoredProcedure [dbo].[p_HUFS_InsertThongTinKhamBenh]    Script Date: 06/09/2015 22:59:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_HUFS_InsertThongTinKhamBenh]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[p_HUFS_InsertThongTinKhamBenh]
GO


/****** Object:  StoredProcedure [dbo].[p_HUFS_InsertThongTinKhamBenh]    Script Date: 06/09/2015 22:59:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[p_HUFS_InsertThongTinKhamBenh] 
(
	@MaKhamBenh varchar(50)
   ,@PhongKhamBenh nvarchar(50)
   ,@NgayKhamBenh datetime
   ,@BenhNhan nvarchar(50)
   ,@MaBenhNhan varchar(50)
   ,@GioiTinh nvarchar(10)
   ,@NamSinh varchar(5)
   ,@BoPhan nvarchar(50)
   ,@CongTy nvarchar(50)
   ,@KhuVuc nvarchar(50)
   ,@NhomBenh nvarchar(50)
   ,@ChuanDoan nvarchar(50)
   ,@QuyetDinhNghi bit
   ,@TuNgay datetime = NULL
   ,@DenNgay datetime = NULL
   ,@LyDo nvarchar(255)
   ,@DienGiai nvarchar(255)
   ,@SoNgayNghi int = NULL
   ,@TongTien decimal
   ,@MaBHYT varchar(50)
   ,@MaICD varchar(50)
   ,@DienGiaiICD nvarchar(255)
   ,@LyDoChiTiet nvarchar(255)
   ,@ChuThich nvarchar(255)
)
AS
BEGIN
	INSERT INTO HUFS_KHAMBENH_HEADER
           (MaKhamBenh
           ,PhongKhamBenh
           ,NgayKhamBenh
           ,BenhNhan
           ,MaBenhNhan
           ,GioiTinh
           ,NamSinh
           ,BoPhan
           ,CongTy
           ,KhuVuc
           ,NhomBenh
           ,ChuanDoan
           ,QuyetDinhNghi
           ,TuNgay
           ,DenNgay
           ,LyDo
           ,DienGiai
           ,SoNgayNghi
           ,TongTien
           ,MaBHYT
           ,MaICD
           ,DienGiaiICD
           ,LyDoChiTiet
           ,ChuThich)
     VALUES
           (@MaKhamBenh
		   ,@PhongKhamBenh 
		   ,@NgayKhamBenh 
		   ,@BenhNhan 
		   ,@MaBenhNhan 
		   ,@GioiTinh 
		   ,@NamSinh 
		   ,@BoPhan 
		   ,@CongTy 
		   ,@KhuVuc 
		   ,@NhomBenh 
		   ,@ChuanDoan
		   ,@QuyetDinhNghi 
		   ,@TuNgay 
		   ,@DenNgay 
		   ,@LyDo 
		   ,@DienGiai 
		   ,@SoNgayNghi 
		   ,@TongTien 
		   ,@MaBHYT 
		   ,@MaICD 
		   ,@DienGiaiICD 
		   ,@LyDoChiTiet 
		   ,@ChuThich )
END




GO


