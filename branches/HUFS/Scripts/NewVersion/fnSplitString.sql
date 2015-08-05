

/****** Object:  UserDefinedFunction [dbo].[fnSplitString]    Script Date: 06/12/2015 16:55:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSplitString]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnSplitString]
GO



/****** Object:  UserDefinedFunction [dbo].[fnSplitString]    Script Date: 06/12/2015 16:55:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


--SET STATISTICS TIME OFF			
--GO
--SET STATISTICS IO OFF

CREATE FUNCTION [dbo].[fnSplitString]
    (
      @string NVARCHAR(MAX) ,
      @delimiter CHAR(1)
    )
RETURNS @output TABLE
    (
      splitdata NVARCHAR(MAX)
    )
    BEGIN
        DECLARE @tempTable table ( splitdata NVARCHAR(MAX))
    
        DECLARE @start INT ,
            @end INT

SELECT
	@start = 1,
	@end = CHARINDEX(@delimiter, @string)

WHILE @start < LEN(@string) + 1 BEGIN
IF @end = 0 SET @end = LEN(@string) + 1

INSERT INTO @tempTable (splitdata)
	VALUES (SUBSTRING(@string, @start, @end - @start))
SET @start = @end + 1
SET @end = CHARINDEX(@delimiter, @string, @start)
END

INSERT INTO @output
	Select distinct(splitdata) from @tempTable
RETURN
END



GO


