USE [master]
GO
/****** Object:  Database [CHUNGKHOAN]    Script Date: 01/05/2022 17:39:49 ******/
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
/****** Object:  Table [dbo].[LENHDAT]    Script Date: 01/05/2022 17:39:50 ******/
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
/****** Object:  Table [dbo].[LENHKHOP]    Script Date: 01/05/2022 17:39:50 ******/
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

INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (35, N'A      ', CAST(N'2022-05-01T17:07:52.007' AS DateTime), N'M', N'LO        ', 0, 100, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (36, N'B      ', CAST(N'2022-05-01T17:08:49.007' AS DateTime), N'M', N'LO        ', 0, 200, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (37, N'AA     ', CAST(N'2022-05-01T17:10:21.010' AS DateTime), N'M', N'LO        ', 0, 100, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (38, N'AA     ', CAST(N'2022-05-01T17:10:00.000' AS DateTime), N'B', N'LO        ', 0, 100, N'Khớp hết')
INSERT [dbo].[LENHDAT] ([ID], [MACP], [NGAYDAT], [LOAIGD], [LOAILENH], [SOLUONG], [GIADAT], [TRANGTHAILENH]) VALUES (39, N'AA     ', CAST(N'2022-05-01T17:10:00.000' AS DateTime), N'M', N'LO        ', 150, 200, N'Khớp lệnh 1 phần')
SET IDENTITY_INSERT [dbo].[LENHDAT] OFF
GO
SET IDENTITY_INSERT [dbo].[LENHKHOP] ON 

INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (4, CAST(N'2022-05-01T17:08:06.803' AS DateTime), 55, 100, 35)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (5, CAST(N'2022-05-01T17:09:07.960' AS DateTime), 60, 200, 36)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (6, CAST(N'2022-05-01T17:10:31.913' AS DateTime), 50, 100, 37)
INSERT [dbo].[LENHKHOP] ([IDKHOP], [NGAYKHOP], [SOLUONGKHOP], [GIAKHOP], [IDLENHDAT]) VALUES (7, CAST(N'2022-05-01T17:12:46.867' AS DateTime), 50, 100, 38)
SET IDENTITY_INSERT [dbo].[LENHKHOP] OFF
GO
/****** Object:  StoredProcedure [dbo].[CursorLoaiGD]    Script Date: 01/05/2022 17:39:50 ******/
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
-- giữ nguyên vị trí, giữ nguyên các thuộc tính nên sử dụng CURSOR KEYSET FOR
  SET @OutCrsr=CURSOR KEYSET FOR 
  SELECT ID, NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
  WHERE MACP=@macp 
    AND DAY(NGAYDAT)=DAY(@Ngay)AND MONTH(NGAYDAT)= MONTH(@Ngay) AND YEAR(NGAYDAT)=YEAR(@Ngay)  
    AND LOAIGD=@LoaiGD AND SOLUONG >0  
    ORDER BY GIADAT DESC, NGAYDAT 
ELSE
  SET @OutCrsr=CURSOR KEYSET FOR 
  SELECT ID,NGAYDAT, SOLUONG, GIADAT FROM LENHDAT 
  WHERE MACP=@macp 
    AND DAY(NGAYDAT)=DAY(@Ngay)AND MONTH(NGAYDAT)= MONTH(@Ngay) AND YEAR(NGAYDAT)=YEAR(@Ngay)  
    AND LOAIGD=@LoaiGD AND SOLUONG >0  
    ORDER BY GIADAT ASC, NGAYDAT 
OPEN @OutCrsr
GO
/****** Object:  StoredProcedure [dbo].[SP_KHOPLENH_LO]    Script Date: 01/05/2022 17:39:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_KHOPLENH_LO]
    @macp NVARCHAR(10) ,
    @Ngay NVARCHAR(50) ,
    @LoaiGD CHAR ,
    @soluongMB INT ,
    @giadatMB FLOAT
AS --Viết SP tính số lượng cổ phiếu khớp theo thuật toán khớp lệnh liên tục khi có 1 lệnh mua hoặc bán được gởi đến bảng LENHDAT
   
    DECLARE @Ngay_Convert DATETIME
               
    SET @Ngay_Convert = CONVERT(DATETIME, @Ngay)


	 SET DATEFORMAT DMY
    DECLARE @CrsrVar CURSOR ,
        @ngaydat NVARCHAR(50) ,
        @soluong INT ,
        @giadat FLOAT ,
        @soluongkhop INT ,
        @giakhop FLOAT ,
        @IDLENHDAT INT ,
        @soluongkhopALL INT

    SET @soluongkhopALL = 0
    IF ( @LoaiGD = 'B' )
        EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'M'
    ELSE
        EXEC CursorLoaiGD @CrsrVar OUTPUT, @macp, @Ngay, 'B'
  
    FETCH NEXT FROM @CrsrVar  INTO @IDLENHDAT, @ngaydat, @soluong, @giadat
 
    WHILE ( @@FETCH_STATUS <> -1
            AND @soluongMB > 0
          )
        BEGIN
    --  Trường hợp lệnh gởi vào là lệnh bán
            IF ( @LoaiGD = 'B' )
                IF ( @giadatMB <= @giadat )
                    BEGIN
                       IF @soluongMB >= @soluong
                        BEGIN
                                SET @soluongkhop = @soluong
                                SET @giakhop = @giadat
                                SET @soluongMB = @soluongMB - @soluong

                                UPDATE  dbo.LENHDAT
                                SET     SOLUONG = 0, TRANGTHAILENH = N'Khớp hết'
                                WHERE CURRENT OF @CrsrVar
                            END
                        ELSE
                            BEGIN
                                SET @soluongkhop = @soluongMB
                                SET @giakhop = @giadat
       
                                UPDATE  dbo.LENHDAT
                                SET     SOLUONG = SOLUONG - @soluongMB , TRANGTHAILENH = N'Khớp lệnh 1 phần'
                                WHERE CURRENT OF @CrsrVar
                                SET @soluongMB = 0
                            END
                    END
                ELSE
                    GOTO THOAT

    -- Còn Trường hợp lệnh gởi vào là lệnh mua
            IF ( @LoaiGD = 'M' )
                IF ( @giadatMB >= @giadat )
                    BEGIN
                        IF @soluongMB >= @soluong
                            BEGIN
                                SET @soluongkhop = @soluong
                                SET @giakhop = @giadat
                                SET @soluongMB = @soluongMB - @soluong
                               
							    UPDATE  dbo.LENHDAT
                                SET     SOLUONG = 0, TRANGTHAILENH = N'Khớp hết'
                                WHERE CURRENT OF @CrsrVar
                            END
                        ELSE
                            BEGIN
                                SET @soluongkhop = @soluongMB
                                SET @giakhop = @giadat

                                UPDATE  dbo.LENHDAT
                                SET     SOLUONG = SOLUONG - @soluongMB, TRANGTHAILENH = N'Khớp lệnh 1 phần'
                                WHERE CURRENT OF @CrsrVar
                                SET @soluongMB = 0
                            END
                    END
                ELSE
                    GOTO THOAT

			-- cập nhật tổng số lượng khớp của lệnh gưi vào
            SET @soluongkhopALL = @soluongkhopALL + @soluongkhop
                                
			 -- Cập nhật table LENHKHOP
            INSERT  INTO dbo.LENHKHOP
                    ( NGAYKHOP ,
                        SOLUONGKHOP ,
                        GIAKHOP ,
                        IDLENHDAT
	                )
            VALUES  ( GETDATE() , -- NGAYKHOP - datetime   
                        @soluongkhop , -- SOLUONGKHOP - int
                        @giakhop , -- GIAKHOP - float
                        @IDLENHDAT -- IDLENHDAT - int
	                )

	        -- Câp nhật thông tin vào 	[dbo].[BANG_GIA_TRUC_TUYEN]
			--IF EXISTS(SELECT * FROM dbo.BANG_GIA_TRUC_TUYEN WHERE MACP = @macp)
			--BEGIN
			--	UPDATE dbo.BANG_GIA_TRUC_TUYEN
			--	SET KL_GIA = @giakhop, KL_KL = @soluongkhop
			--	WHERE MACP = @macp
			--END
			--ELSE
   --         BEGIN
   --             INSERT INTO dbo.BANG_GIA_TRUC_TUYEN( MACP ,  KL_GIA , KL_KL )
   --             VALUES  ( @macp, @giakhop, @soluongkhop )	       
   --         END
            FETCH NEXT FROM @CrsrVar INTO @IDLENHDAT, @ngaydat, @soluong,
                @giadat
        END
    THOAT:
    IF ( @soluongMB > 0  AND @soluongkhopALL > 0)
        BEGIN
            INSERT  INTO LENHDAT
                    ( MACP ,
                      NGAYDAT ,
                      LOAIGD ,
                      LOAILENH ,
                      SOLUONG ,
                      GIADAT ,
                      TRANGTHAILENH
                    )
            VALUES  ( @macp ,
                      @ngaydat ,
                      @LoaiGD ,
                      N'LO' ,
                      @soluongMB ,
                      @giadatMB ,
                      N'Khớp lệnh 1 phần'
                    )
        END
	ELSE IF ( @soluongMB > 0  AND @soluongkhopALL = 0)
		BEGIN
		 INSERT  INTO LENHDAT
                    ( MACP ,
                      NGAYDAT ,
                      LOAIGD ,
                      LOAILENH ,
                      SOLUONG ,
                      GIADAT ,
                      TRANGTHAILENH
                    )
            VALUES  ( @macp ,
                      @Ngay_Convert ,
                      @LoaiGD ,
                      N'LO' ,
                      @soluongMB ,
                      @giadatMB ,
                      N'Chờ khớp'
                    )
		END
	-- in ra kết quả  số lượng cổ phiếu khớp theo thuật toán khớp lệnh liên tục khi có 1 lệnh mua hoặc bán được gởi đến bảng LENHDAT
   -- PRINT N'Số lương cổ phiếu khớp: ' + CAST(@soluongkhopALL AS NVARCHAR(10))
    CLOSE @CrsrVar
    DEALLOCATE @CrsrVar



GO
USE [master]
GO
ALTER DATABASE [CHUNGKHOAN] SET  READ_WRITE 
GO
