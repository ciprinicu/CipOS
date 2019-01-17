@echo off

if exist "C:\Users\PC\Desktop\CipOS\CipOS\Backup\Latest_Backup*" (
	ren CipOS* Latest_Backup*
	move C:\Users\PC\Desktop\CipOS\CipOS\Latest_Backup.bat C:\Users\PC\Desktop\CipOS\CipOS\Backup
) else (
	xcopy /y C:\Users\PC\Desktop\CipOS\CipOS\CipOS.bat C:\Users\PC\Desktop\CipOS\CipOS\Backup
)

echo Backup Created!

pause > null
exit