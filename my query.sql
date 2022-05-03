use CHUNGKHOAN
select * from LENHDAT order by id desc
select * from LENHKHOP order by LENHKHOP.IDKHOP desc

--EXEC	[dbo].[SP_KHOPLENH_LO]
--		@macp = N'A',
--		@Ngay = N'2022-05-03 18:29:12.027',
--		@LoaiGD = N'B',
--		@soluongMB = 200,
--		@giadatMB = 500

--declare @macp nchar = N'A',
--@Ngay datetime = N'2022-05-03 23:26:00.000',
--@loaigd nvarchar = N'B'

--SELECT ID,NGAYDAT, SOLUONG,LOAIGD, GIADAT FROM LENHDAT 
  --WHERE MACP=@macp 
    --AND DAY(NGAYDAT)=DAY(@Ngay)AND MONTH(NGAYDAT)= MONTH(@Ngay) AND YEAR(NGAYDAT)=YEAR(@Ngay)  
    --AND LOAIGD=@LoaiGD AND SOLUONG >0  
    --ORDER BY GIADAT ASC, NGAYDAT 

	-- delete from LENHDAT where id >1000
	-- delete from lenhkhop

	-- insert into LENHDAT (MACP,NGAYDAT,LOAIGD,SOLUONG,GIADAT,TRANGTHAILENH,LOAILENH) values ('B',N'2022-05-03 23:26:00.000','B','42','400',N'Chờ khớp','LO')