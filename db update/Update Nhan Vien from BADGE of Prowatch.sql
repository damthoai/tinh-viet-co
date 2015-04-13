
UPDATE nv
SET	ID_Prowatch = bad.ID,
	[BADGE_STATUS] = bad.BADGE_STATUS,
	[BADGE_STATUS_DESC] = bad.StatusDecs,
	[BADGE_TYPE] = bad.BADGE_TYPE,
	[BADGE_TYPE_DESC] = bad.TypeDecs,
	[ISSUE_DATE] = bad.ISSUE_DATE,
	[EXPIRE_DATE] = bad.ISSUE_DATE
FROM htcc.dbo.tb_NhanVien nv
INNER JOIN (
SELECT
	b.ID,
	b.BADGE_STATUS,
	bs.DESCRP AS StatusDecs,
	b.BADGE_TYPE,
	bt.DESCRP AS TypeDecs,
	b.ISSUE_DATE,
	b.EXPIRE_DATE,
	bc.CARDNO
FROM PWNT.dbo.BADGE b
INNER JOIN PWNT.dbo.BADGE_C bc
	ON b.ID = bc.ID
LEFT JOIN PWNT.dbo.BADGE_STATUS bs
	ON bs.ID = b.BADGE_STATUS
LEFT JOIN PWNT.dbo.BADGE_TYP bt
	ON bt.ID = b.BADGE_TYPE
) bad ON bad.CARDNO = nv.CardNo