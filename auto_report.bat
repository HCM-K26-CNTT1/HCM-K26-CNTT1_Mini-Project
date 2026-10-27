
@echo off
cd /d "%~dp0"

echo === BAO CAO SU CO HE THONG GREENTECH === > "..\backup\bao-cao-su-co.txt"
echo Ngay lap bao cao: %date% %time% >> "..\backup\bao-cao-su-co.txt"
echo ======================================== >> "..\backup\bao-cao-su-co.txt"

if not exist "..\data\log-he-thong.log" (
    echo Loi: Khong tim thay file log-he-thong.log
    pause
    exit /b 1
)

findstr /I /C:"CRITICAL" /C:"ERROR" /C:"TIMEOUT" "..\data\log-he-thong.log" >> "..\backup\bao-cao-su-co.txt"

if errorlevel 2 (
    echo Loi: Khong the doc file log.
    pause
    exit /b 1
)

echo Da tao bao cao thanh cong!
echo Duong dan: backup\bao-cao-su-co.txt
pause
