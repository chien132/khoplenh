USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 03/05/2022 21:21:35 ******/
CREATE DATABASE [CHUNGKHOAN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CHUNGKHOAN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CHUNGKHOAN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CHUNGKHOAN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CHUNGKHOAN] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CHUNGKHOAN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ARITHABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CHUNGKHOAN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CHUNGKHOAN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CHUNGKHOAN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET RECOVERY FULL 
GO
ALTER DATABASE [CHUNGKHOAN] SET  MULTI_USER 
GO
ALTER DATABASE [CHUNGKHOAN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CHUNGKHOAN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CHUNGKHOAN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CHUNGKHOAN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CHUNGKHOAN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CHUNGKHOAN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CHUNGKHOAN', N'ON'
GO
ALTER DATABASE [CHUNGKHOAN] SET QUERY_STORE = OFF
GO
USE [CHUNGKHOAN]
GO
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 03/05/2022 21:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHDAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MACP] [nchar](7) NOT NULL,
	[NGAYDAT] [datetime] NOT NULL,
	[LOAIGD] [nchar](1) NOT NULL,
	[LOAILENH] [nchar](10) NOT NULL,
	[SOLUONG] [int] NOT NULL,
	[GIADAT] [float] NOT NULL,
	[TRANGTHAILENH] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_LENHDAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 03/05/2022 21:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LENHKHOP](
	[IDKHOP] [int] IDENTITY(1,1) NOT NULL,
	[NGAYKHOP] [datetime] NOT NULL,
	[SOLUONGKHOP] [int] NOT NULL,
	[GIAKHOP] [float] NOT NULL,
	[IDLENHDAT] [int] NOT NULL,
 CONSTRAINT [PK_LENHKHOP] PRIMARY KEY CLUSTERED 
(
	[IDKHOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LENHDAT] ON 

INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (70, N'A      ', CAST(N'2022-05-03T18:29:12.027' AS DateTime), N'B', N'LO        ', 0, 500, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (71, N'A      ', CAST(N'2022-05-03T18:29:12.027' AS DateTime), N'B', N'LO        ', 0, 600, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (72, N'A      ', CAST(N'2022-05-03T18:29:00.000' AS DateTime), N'M', N'LO        ', 0, 1000, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (73, N'A      ', CAST(N'2022-05-03T18:29:12.027' AS DateTime), N'M', N'LO        ', 0, 2000, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (74, N'A      ', CAST(N'2022-05-03T18:29:00.000' AS DateTime), N'B', N'LO        ', 0, 500, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (82, N'C      ', CAST(N'2022-05-03T19:45:10.047' AS DateTime), N'B', N'LO        ', 0, 200, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (83, N'C      ', CAST(N'2022-05-03T21:17:44.017' AS DateTime), N'M', N'LO        ', 8, 400, N'Khớp lệnh 1 phần')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (84, N'B      ', CAST(N'2022-05-03T21:18:18.017' AS DateTime), N'M', N'LO        ', 0, 1000, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (85, N'B      ', CAST(N'2022-05-03T21:18:32.017' AS DateTime), N'M', N'LO        ', 0, 3000, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (86, N'B      ', CAST(N'2022-05-03T21:18:46.017' AS DateTime), N'B', N'LO        ', 0, 800, N'Khớp hết')
SET IDENTITY_INSERT [dbo].[LENHDAT] OFF
GO
SET IDENTITY_INSERT [dbo].[LENHKHOP] ON 

INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (18, CAST(N'2022-05-03T18:31:36.230' AS DateTime), 20, 500, 70)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (19, CAST(N'2022-05-03T18:31:36.230' AS DateTime), 30, 600, 71)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (20, CAST(N'2022-05-03T18:50:16.300' AS DateTime), 40, 2000, 73)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (21, CAST(N'2022-05-03T18:50:16.300' AS DateTime), 50, 1000, 72)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (23, CAST(N'2022-05-03T19:31:25.577' AS DateTime), 110, 500, 74)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (28, CAST(N'2022-05-03T21:17:44.057' AS DateTime), 22, 200, 82)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (29, CAST(N'2022-05-03T21:18:46.077' AS DateTime), 30, 3000, 85)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (30, CAST(N'2022-05-03T21:18:46.077' AS DateTime), 50, 1000, 84)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (31, CAST(N'2022-05-03T21:20:05.820' AS DateTime), 20, 800, 86)
SET IDENTITY_INSERT [dbo].[LENHKHOP] OFF
GO
ALTER TABLE [dbo].[LENHKHOP]  WITH CHECK ADD  CONSTRAINT [FK_LENHKHOP_LENHDAT] FOREIGN KEY([IDLENHDAT])
REFERENCES [dbo].[LENHDAT] ([ID])
GO
ALTER TABLE [dbo].[LENHKHOP] CHECK CONSTRAINT [FK_LENHKHOP_LENHDAT]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD  CONSTRAINT [CK_LENHDAT_GIADAT] CHECK  (([GIADAT]>(0)))
GO
ALTER TABLE [dbo].[LENHDAT] CHECK CONSTRAINT [CK_LENHDAT_GIADAT]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD  CONSTRAINT [CK_LENHDAT_LOAIGD] CHECK  (([LOAIGD]='M' OR [LOAIGD]='B'))
GO
ALTER TABLE [dbo].[LENHDAT] CHECK CONSTRAINT [CK_LENHDAT_LOAIGD]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD  CONSTRAINT [CK_LENHDAT_LOAILENH] CHECK  (([LOAILENH]='LO' OR [LOAILENH]='ATO' OR [LOAILENH]='ATC'))
GO
ALTER TABLE [dbo].[LENHDAT] CHECK CONSTRAINT [CK_LENHDAT_LOAILENH]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD  CONSTRAINT [CK_LENHDAT_SOLUONG] CHECK  (([SOLUONG]>=(0)))
GO
ALTER TABLE [dbo].[LENHDAT] CHECK CONSTRAINT [CK_LENHDAT_SOLUONG]
GO
ALTER TABLE [dbo].[LENHDAT]  WITH CHECK ADD  CONSTRAINT [CK_LENHDAT_TRANGTHAILENH] CHECK  (([TRANGTHAILENH]=N'Chờ khớp' OR [TRANGTHAILENH]=N'Khớp lệnh 1 phần' OR [TRANGTHAILENH]=N'Khớp hết'))
GO
ALTER TABLE [dbo].[LENHDAT] CHECK CONSTRAINT [CK_LENHDAT_TRANGTHAILENH]
GO
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 03/05/2022 21:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CursorLoaiGD]
  @OutCrsr CURSOR VARYING OUTPUT, 
  @macp NVARCHAR( 10), @Ngay NVARCHAR( 50),  @LoaiGD CHAR 
AS
SET DATEFORMAT DMY 
IF (@LoaiGD='M') 
	-- KEYSET: các fields và thứ tự của các dòng trong cursor được cố định khi cursor được mở.
  SET @OutCrsr=CURSOR KEYSET FOR 
  SELECT ID, NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
  WHERE MACP=@macp 
    AND DAY(NGAYDAT)=DAY(@Ngay)AND MONTH(NGAYDAT)= MONTH(@Ngay) AND YEAR(NGAYDAT)=YEAR(@Ngay)  
    AND LOAIGD=@LoaiGD AND SOLUONG >0  
    ORDER BY GIADAT DESC, NGAYDAT 
	-- Lenh mua sap xep giam dan theo gia
ELSE
  SET @OutCrsr=CURSOR KEYSET FOR 
  SELECT ID,NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
  WHERE MACP=@macp 
    AND DAY(NGAYDAT)=DAY(@Ngay)AND MONTH(NGAYDAT)= MONTH(@Ngay) AND YEAR(NGAYDAT)=YEAR(@Ngay)  
    AND LOAIGD=@LoaiGD AND SOLUONG >0  
    ORDER BY GIADAT, NGAYDAT
	-- Lenh ban sap xep tang dan theo gia
OPEN @OutCrsr
GO
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 03/05/2022 21:21:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KHOPLENH_LO]
    @macp NVARCHAR(7),
    @Ngay NVARCHAR(50),
    @LoaiGD CHAR,
    @soluongMB INT,
    @giadatMB FLOAT
AS
    DECLARE @Ngay_Convert DATETIME
    SET @Ngay_Convert = CONVERT(DATETIME, @Ngay)
	SET DATEFORMAT DMY

    DECLARE @CrsrVar CURSOR,
	@IDlenhdat INT,
	@ngaydat NVARCHAR(50),
	@soluong INT,
	@giadat FLOAT,
	@soluongkhop INT,
	@giakhop FLOAT,
	@soluongkhopALL INT

    SET @soluongkhopALL = 0
	-- Gọi SP trả về Cursor đến bảng các lệnh có khả năng khớp
    IF ( @LoaiGD = 'B' )
		EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'M'
    ELSE
        EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'B'
  
    FETCH NEXT FROM @CrsrVar INTO @IDLENHDAT, @ngaydat, @soluong, @giadat
 
    WHILE (@@FETCH_STATUS <> -1 AND @soluongMB > 0)
        BEGIN
		-- Nếu lệnh mới đặt là lệnh bán
			IF (@LoaiGD = 'B')
				IF (@giadatMB <= @giadat)
					BEGIN
						IF (@soluongMB >= @soluong)
							BEGIN
								SET @soluongkhop = @soluong
								SET @giakhop = @giadat

                                UPDATE dbo.LENHDAT
								SET SOLUONG = 0, TRANGTHAILENH = N'Khớp hết'
								WHERE CURRENT OF @CrsrVar
								SET @soluongMB = @soluongMB - @soluong
							END
						ELSE
							BEGIN
								SET @soluongkhop = @soluongMB
								SET @giakhop = @giadat

								UPDATE dbo.LENHDAT
								SET SOLUONG = SOLUONG - @soluongMB, TRANGTHAILENH = N'Khớp lệnh 1 phần'
								WHERE CURRENT OF @CrsrVar
								SET @soluongMB = 0
							END
					END
				ELSE
					GOTO THOAT

			-- Nếu lệnh mới đặt là lệnh mua
			IF (@LoaiGD = 'M')
				IF (@giadatMB >= @giadat)
					BEGIN
						IF (@soluongMB >= @soluong)
							BEGIN
								SET @soluongkhop = @soluong
								SET @giakhop = @giadat
								
								UPDATE dbo.LENHDAT
								SET SOLUONG = 0, TRANGTHAILENH = N'Khớp hết'
								WHERE CURRENT OF @CrsrVar
								SET @soluongMB = @soluongMB - @soluong
							END
						ELSE
							BEGIN
								SET @soluongkhop = @soluongMB
								SET @giakhop = @giadat
								
								UPDATE dbo.LENHDAT
								SET SOLUONG = SOLUONG - @soluongMB, TRANGTHAILENH = N'Khớp lệnh 1 phần'
								WHERE CURRENT OF @CrsrVar
								SET @soluongMB = 0
							END
					END
				ELSE
					GOTO THOAT
					
			-- Tính tổng số lượng khớp của lệnh vừa đặt
			SET @soluongkhopALL = @soluongkhopALL + @soluongkhop
			
			-- Cập nhật table LENHKHOP
            INSERT INTO dbo.LENHKHOP (NGAYKHOP, SOLUONGKHOP, GIAKHOP, IDLENHDAT)
            VALUES (GETDATE(), @soluongkhop, @giakhop, @IDLENHDAT)

			-- Chuyển Cursor đến bản ghi tiếp theo
            FETCH NEXT FROM @CrsrVar INTO @IDLENHDAT, @ngaydat, @soluong, @giadat
		END
		
	THOAT:
		IF ( @soluongMB > 0  AND @soluongkhopALL > 0)
			BEGIN
				INSERT INTO LENHDAT (MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
				VALUES  (@macp, @Ngay_Convert, @LoaiGD, N'LO', @soluongMB, @giadatMB, N'Khớp lệnh 1 phần')
			END
		ELSE IF (@soluongMB > 0 AND @soluongkhopALL = 0)
			BEGIN
				INSERT INTO LENHDAT (MACP, NGAYDAT, LOAIGD, LOAILENH, SOLUONG, GIADAT, TRANGTHAILENH)
				VALUES (@macp, @Ngay_Convert, @LoaiGD, N'LO', @soluongMB, @giadatMB, N'Chờ khớp')
			END

   CLOSE @CrsrVar
   DEALLOCATE @CrsrVar



GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
