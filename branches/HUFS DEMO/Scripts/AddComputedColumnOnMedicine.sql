  
  ALTER TABLE dbo.[HUFS_MEDICINE] ADD MaThuocYTeHienThi AS CASE
       WHEN BaoHiem = 0 THEN MaThuocYTe 
       WHEN BaoHiem = 1 THEN MaThuocYTe + '_bh'
       ELSE MaThuocYTe
   END