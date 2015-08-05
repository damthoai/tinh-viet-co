
DECLARE @TranName VARCHAR(20);
SET @TranName = 'MyTransaction';
BEGIN TRANSACTION @TranName;


INSERT INTO [dbo].[FPT_ENV_AUT_FORM] ([FORM_ID], [FORM_NAME], [MENU_NAME], [COMMON_MENU], [MENU_LEVEL], [MENU_PID], [MENU_ZORDER], [TOOLBAR_BUTTON_INDEX], [TOOLBAR_BUTTON_NAME], [TOOLBAR_NAME], [DESCRIPTION], [ICON_NAME])
VALUES (150, 'FrmMapUserLevel', 'mnuMapUserLevel', '0', 3, 50, 100, 65, '', 'tlbMainToolbar', 'menu Map level approve', 'user_add.ico')

INSERT INTO [dbo].[FPT_ENV_AUT_FEATURE]
           ([FEATURE_ID]
           ,[FEATURE_NAME])
     VALUES
           (150
           ,'mnuMapUserLevel')
           
 INSERT INTO [dbo].[FPT_ENV_AUT_FEATURE_DETAIL]
           ([FEATURE_ID]
           ,[FORM_ID])
     VALUES
           (150
           ,150)          

INSERT INTO [HTCC].[dbo].[FPT_ENV_AUT_POLICY]
           ([FEATURE_ID]
           ,[UROLE_ID]
           ,[LEVEL_ID])
     VALUES
           (150
           ,'SUPADMIN'
           ,0)
           
COMMIT TRANSACTION @TranName;  




