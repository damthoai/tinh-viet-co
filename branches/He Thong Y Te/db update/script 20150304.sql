USE [HTCC]
GO
/****** Object:  StoredProcedure [dbo].[p_CreateShiftForTeam]    Script Date: 03/04/2015 08:24:39 ******/
DROP PROCEDURE [dbo].[p_CreateShiftForTeam]
GO
/****** Object:  StoredProcedure [dbo].[p_CreateShiftForTeam1]    Script Date: 03/04/2015 08:24:39 ******/
DROP PROCEDURE [dbo].[p_CreateShiftForTeam1]
GO
/****** Object:  Table [dbo].[tb_CapBatNhanVien]    Script Date: 03/04/2015 08:24:35 ******/
ALTER TABLE [dbo].[tb_CapBatNhanVien] DROP CONSTRAINT [DF_tb_CapBatNhanVien_Is_Active]
GO
DROP TABLE [dbo].[tb_CapBatNhanVien]
GO
/****** Object:  Table [dbo].[tb_DinhNghiaCaLamViecNhomTrongTuan]    Script Date: 03/04/2015 08:24:35 ******/
DROP TABLE [dbo].[tb_DinhNghiaCaLamViecNhomTrongTuan]
GO
/****** Object:  Table [dbo].[FPT_ENV_AUT_USER]    Script Date: 03/04/2015 08:24:35 ******/
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_PASSWORD]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_FIRSTNAME]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_LASTNAME]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_EMAIL]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_ADDRESS]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_PHONE]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_STATUS]
GO
ALTER TABLE [dbo].[FPT_ENV_AUT_USER] DROP CONSTRAINT [DF_UVMI_AUT_USER_DESCRIPTION]
GO
DROP TABLE [dbo].[FPT_ENV_AUT_USER]
GO
/****** Object:  Table [dbo].[FPT_ENV_AUT_USER]    Script Date: 03/04/2015 08:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FPT_ENV_AUT_USER](
	[USERNAME] [varchar](20) NOT NULL,
	[PASSWORD] [varchar](255) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_PASSWORD]  DEFAULT (space((0))),
	[FIRSTNAME] [nvarchar](50) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_FIRSTNAME]  DEFAULT (space((0))),
	[LASTNAME] [nvarchar](50) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_LASTNAME]  DEFAULT (space((0))),
	[EMAIL] [varchar](50) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_EMAIL]  DEFAULT (space((0))),
	[ADDRESS] [nvarchar](255) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_ADDRESS]  DEFAULT (space((0))),
	[PHONE] [varchar](50) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_PHONE]  DEFAULT (space((0))),
	[START_DATE] [datetime] NOT NULL,
	[END_DATE] [datetime] NOT NULL,
	[PWD_CHG_DATE] [datetime] NOT NULL,
	[STATUS] [char](2) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_STATUS]  DEFAULT ('AC'),
	[UROLE_ID] [varchar](14) NOT NULL,
	[DESCRIPTION] [nvarchar](255) NOT NULL CONSTRAINT [DF_UVMI_AUT_USER_DESCRIPTION]  DEFAULT (space((0))),
	[MaNhanVien] [int] NULL,
	[MaNVUnilever] [varchar](50) NULL,
	[CardNo] [char](250) NULL,
	[MI] [nvarchar](120) NULL,
	[GioiTinh] [char](1) NULL,
	[LevelQuanLy] [int] NULL,
 CONSTRAINT [PK_UVMI_AUT_USER] PRIMARY KEY CLUSTERED 
(
	[USERNAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_DinhNghiaCaLamViecNhomTrongTuan]    Script Date: 03/04/2015 08:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_DinhNghiaCaLamViecNhomTrongTuan](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[TruongNhomId] [int] NOT NULL,
	[NhomId] [int] NOT NULL,
	[CaLamViec] [int] NOT NULL,
	[DauDocTheVao] [varbinary](18) NULL,
	[DauDocTheRa] [varbinary](18) NULL,
	[NgayTrongTuan] [char](2) NULL,
	[NgayTrongTuanChiTiet] [nvarchar](20) NULL,
	[CreateDate] [char](8) NULL,
	[CreaterId] [char](10) NULL,
	[LastUpDate] [char](8) NULL,
	[lastUpdateId] [char](10) NULL,
	[Is_Active] [bit] NULL,
 CONSTRAINT [PK_tb_DinhNghiaCaLamViecNhomTrongTuan] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_CapBatNhanVien]    Script Date: 03/04/2015 08:24:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_CapBatNhanVien](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [varchar](20) NOT NULL,
	[Parent_Level] [int] NULL,
	[ChildId] [varchar](20) NULL,
	[Child_Level] [int] NULL,
	[CreateDate] [char](8) NULL,
	[CreaterId] [int] NULL,
	[LastUpDate] [char](8) NULL,
	[lastUpdateId] [int] NULL,
	[Is_Active] [bit] NOT NULL CONSTRAINT [DF_tb_CapBatNhanVien_Is_Active]  DEFAULT ((1)),
 CONSTRAINT [PK_tb_CapBatNhanVien] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[p_CreateShiftForTeam1]    Script Date: 03/04/2015 08:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CreateShiftForTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CreateShiftForTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_CreateShiftForTeam1]
	@Nhom int = 0,
	@TruongNhom int = 0,
	@Tuan int = 0,
	@Year char(4) = ''
	
AS

BEGIN

DECLARE @Monday  char(10) = '';
DECLARE @Tuerday  char(10) = '';
DECLARE @Wedday  char(10) = '';
DECLARE @Thuday  char(10) = '';
DECLARE @Friday  char(10) = '';
DECLARE @Satday  char(10) = '';
DECLARE @Sunday  char(10) = '';

SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year) + (@Tuan - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year) + (@Tuan - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year) + (@Tuan - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year) + (@Tuan - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year) + (@Tuan - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year) + (@Tuan - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year) + (@Tuan), 6), 112)


IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])

	SELECT
		clv.NhomId,
		(CASE WHEN clv.NgayTrongTuan = '2' THEN @Monday
			WHEN clv.NgayTrongTuan = '3' THEN @Tuerday
			WHEN clv.NgayTrongTuan = '4' THEN @Wedday
			WHEN clv.NgayTrongTuan = '5' THEN @Thuday
			WHEN clv.NgayTrongTuan = '6' THEN @Friday
			WHEN clv.NgayTrongTuan = '7' THEN @Satday
			WHEN clv.NgayTrongTuan = 'cn' THEN @Sunday END) as ngayVao,
		clv.CaLamViec,
		calamviec.MaCaLamViec,
		clv.DauDocTheVao,
		clv.DauDocTheRa,
		@Tuan ,
		clv.NgayTrongTuanChiTiet,
		0,
		'',
		0,
			CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
		

	FROM tb_DinhNghiaCaLamViecNhomTrongTuan clv
	INNER JOIN tb_Nhom n
		ON n.SysId = clv.NhomId
	INNER JOIN tb_NhanVien nv
		ON nv.SysId = clv.TruongNhomId
	INNER JOIN tb_CaLamViec calamviec
		ON calamviec.SysId = clv.CaLamViec
	WHERE clv.TruongNhomId = 1
	AND clv.NhomId = 1
	AND clv.Is_Active = 1
End

UPDATE tb_CaLamViecNhom
SET	Is_Active = 0,
	IsOff = 1,
	IsOff_Caution = nnct.MoTa
FROM tb_CaLamViecNhom clvn
INNER JOIN tb_NgayNghi_ChiTiet nnct
	ON nnct.Ngay = clvn.NgayVao
WHERE clvn.Tuan IN (@Tuan) AND nnct.Is_Active = 1


END
GO
/****** Object:  StoredProcedure [dbo].[p_CreateShiftForTeam]    Script Date: 03/04/2015 08:24:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*********************  Stored Procedure: p_CreateShiftForTeam ************************
Author: TuanDH
Created Date: 05 Sep 2011

Exec p_CreateShiftForTeam

*********************************************************************************************/

CREATE PROCEDURE [dbo].[p_CreateShiftForTeam]
	@Nhom int = 0,
	@TruongNhom int = 0,
	
	@Tuan1 int = 0,
	@Tuan2 int = 0,
	@Tuan3 int = 0,
	@Tuan4 int = 0,
	@Tuan5 int = 0,
	@Year1 char(4) = '',
	@Year2 char(4) = '',
	@Year3 char(4) = '',
	@Year4 char(4) = '',
	@Year5 char(4) = ''
	
AS

BEGIN

DECLARE @Monday  char(10) = '';
DECLARE @Tuerday  char(10) = '';
DECLARE @Wedday  char(10) = '';
DECLARE @Thuday  char(10) = '';
DECLARE @Friday  char(10) = '';
DECLARE @Satday  char(10) = '';
DECLARE @Sunday  char(10) = '';

SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year1) + (@Tuan1 - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year1) + (@Tuan1 - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year1) + (@Tuan1 - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year1) + (@Tuan1 - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year1) + (@Tuan1 - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year1) + (@Tuan1 - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year1) + (@Tuan1), 6), 112)
IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan1 AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])

	SELECT
		@Nhom,
		@Monday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
(SELECT
	ID
FROM LOGICAL_DEV
WHERE CAST(ID AS INT) = -1588901739),
(SELECT
	ID
FROM LOGICAL_DEV
WHERE CAST(ID AS INT) = -318151706),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 2',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Tuerday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 3',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Wedday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 4',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Thuday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 5',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Friday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 6',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Satday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan1 AS char(2)),
		N'Thứ 7',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Sunday,
		1,
		NULL,
		NULL,
		NULL,
		CAST(@Tuan1 AS char(2)),
		N'Chủ Nhật',
		1,
		N'Ngày Chủ nhật',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
END
-- Tuan 2

SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year2) + (@Tuan2 - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year2) + (@Tuan2 - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year2) + (@Tuan2 - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year2) + (@Tuan2 - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year2) + (@Tuan2 - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year2) + (@Tuan2 - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year2) + (@Tuan2), 6), 112)

IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan2 AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])

	SELECT
		@Nhom,
		@Monday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 2',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Tuerday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
		(SELECT
	ID
FROM LOGICAL_DEV
WHERE CAST(ID AS INT) = -1588901739),
(SELECT
	ID
FROM LOGICAL_DEV
WHERE CAST(ID AS INT) = -318151706),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 3',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Wedday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 4',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Thuday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 5',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Friday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 6',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Satday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan2 AS char(2)),
		N'Thứ 7',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Sunday,
		1,
		NULL,
		NULL,
		NULL,
		CAST(@Tuan2 AS char(2)),
		N'Chủ Nhật',
		1,
		N'Ngày Chủ nhật',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
END
--Tuan 3
SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year2) + (@Tuan3 - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year3) + (@Tuan3 - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year3) + (@Tuan3 - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year3) + (@Tuan3 - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year3) + (@Tuan3 - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year3) + (@Tuan3 - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year3) + (@Tuan3), 6), 112)

IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan3 AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])

	SELECT
		@Nhom,
		@Monday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 2',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Tuerday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 3',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Wedday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 4',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Thuday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 5',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Friday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 6',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Satday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan3 AS char(2)),
		N'Thứ 7',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Sunday,
		1,
		NULL,
		NULL,
		NULL,
		CAST(@Tuan3 AS char(2)),
		N'Chủ Nhật',
		1,
		N'Ngày Chủ nhật',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
END
--Tuan 4

SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year2) + (@Tuan4 - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year4) + (@Tuan4 - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year4) + (@Tuan4 - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year4) + (@Tuan4 - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year4) + (@Tuan4 - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year4) + (@Tuan4 - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year4) + (@Tuan4), 6), 112)
IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan4 AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])

	SELECT
		@Nhom,
		@Monday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 2',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Tuerday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 3',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Wedday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 4',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Thuday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 5',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Friday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 6',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Satday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan4 AS char(2)),
		N'Thứ 7',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Sunday,
		1,
		NULL,
		NULL,
		NULL,
		CAST(@Tuan4 AS char(2)),
		N'Chủ Nhật',
		1,
		N'Ngày Chủ nhật',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
END

--Tuan 5


SET @Monday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 7, '1/1/' + @Year2) + (@Tuan5 - 1), 7), 112)
SET @Tuerday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 8, '1/1/' + @Year5) + (@Tuan5 - 1), 8), 112)
SET @Wedday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 9, '1/1/' + @Year5) + (@Tuan5 - 1), 9), 112)
SET @Thuday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 10, '1/1/' + @Year5) + (@Tuan5 - 1), 10), 112)
SET @Friday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 11, '1/1/' + @Year5) + (@Tuan5 - 1), 11), 112)
SET @Satday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 5, '1/1/' + @Year5) + (@Tuan5 - 1), 5), 112)
SET @Sunday = CONVERT(char(10), DATEADD(wk, DATEDIFF(wk, 6, '1/1/' + @Year5) + (@Tuan5), 6), 112)

IF NOT EXISTS (SELECT
	*
FROM tb_CaLamViecNhom
WHERE MaNhom = @Nhom AND Tuan = CAST(@Tuan5 AS char(2)) AND NgayVao IN (@Monday, @Tuerday, @Wedday, @Thuday, @Friday, @Satday, @Sunday))
BEGIN
INSERT INTO [dbo].[tb_CaLamViecNhom] ([MaNhom], [NgayVao], [MaCaHeThong], [MaCaLaViec], [DauDocTheVaoId], [DauDocTheRaId], [Tuan], [ThuTrongTuan], [IsOff], [IsOff_Caution], [IsOT], [CreateDate], [CreaterId], [LastUpDate], [lastUpdateId])


	SELECT
		@Nhom,
		@Monday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 2',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Tuerday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 3',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Wedday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
		(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 4',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Thuday,
		3,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 3),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 5',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Friday,
		2,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 2),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 6',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Satday,
		1,
		(SELECT
			MaCaLamViec
		FROM tb_CaLamViec
		WHERE tb_CaLamViec.SysId = 1),
	(SELECT top 1
	ID
FROM LOGICAL_DEV ),
(SELECT TOP 1
	ID
FROM LOGICAL_DEV),
		CAST(@Tuan5 AS char(2)),
		N'Thứ 7',
		0,
		'',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom UNION SELECT
		@Nhom,
		@Sunday,
		1,
		NULL,
		NULL,
		NULL,
		CAST(@Tuan5 AS char(2)),
		N'Chủ Nhật',
		1,
		N'Ngày Chủ nhật',
		0,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom,
		CONVERT(char(8), GETDATE(), 112),
		@TruongNhom
END

UPDATE tb_CaLamViecNhom
SET	Is_Active = 0,
	IsOff = 1,
	IsOff_Caution = nnct.MoTa
FROM tb_CaLamViecNhom clvn
INNER JOIN tb_NgayNghi_ChiTiet nnct
	ON nnct.Ngay = clvn.NgayVao
WHERE clvn.Tuan IN (@Tuan1, @Tuan2, @Tuan3, @Tuan4, @Tuan5)


END
GO
