SET NOCOUNT ON;

DECLARE @MaxDate datetime = '2015-02-12 10:27:58.000'

DECLARE @SysId int;

DECLARE SysId_cursor CURSOR FOR SELECT
	SysId
FROM tb_NhanVien
WHERE SysId IN (
2493,
2510,
2527,
2544,
2561,
2578,
2595,
2612,
2629,
3696

)
ORDER BY SysId;

OPEN SysId_cursor

FETCH NEXT FROM SysId_cursor 
INTO @SysId

WHILE @@FETCH_STATUS = 0
BEGIN

SELECT TOP 12
	'UPDATE ev SET BADGENO = (SELECT ID_Prowatch FROM tb_NhanVien where SysId = ' ,@SysId , ') , REC_DAT = ''',
	REC_DAT,
	''' from	tb_ev_log ev WHERE cast(ev.RID AS INT) =',
	CAST(RID AS INT) AS Id
FROM tb_ev_log

WHERE REC_DAT > @MaxDate

ORDER BY REC_DAT


SELECT @MaxDate = MAX(aa.REC_DAT) FROM 
(Select TOP 12 REC_DAT
FROM tb_ev_log

WHERE REC_DAT > @MaxDate

ORDER BY REC_DAT) aa




FETCH NEXT FROM SysId_cursor
INTO @SysId
END
 
CLOSE SysId_cursor;
DEALLOCATE SysId_cursor;